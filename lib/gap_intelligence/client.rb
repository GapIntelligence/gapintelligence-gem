module GapIntelligence
  class Client
    attr_reader :connection, :gapi_client_id, :gapi_client_secret

    def initialize
      @connection = Faraday.new(url: 'http://api.gapintelligence.com') do |config|
        config.request :json
        config.response :json
        config.adapter Faraday.default_adapter
      end
    end

    attr_writer :gapi_client_id

    attr_writer :gapi_client_secret

    def pricings
      request :pricings
    end

    def request(resource, action = nil)
      authenticate unless authenticated?

      connection
        .get(
          [api_base_url, resource, action]
          .join('/'))
        .body
    end

    def authenticated?
      connection.headers['Authorization'] &&
        connection.headers['Authorization'].matches(/Bearer/)
    end

    def authenticate
      connection.headers['Authorization'] = "Bearer #{get_token}"
    end

    def get_token
      unless gapi_client_id && gapi_client_secret
        raise ConfigurationError.new('gAPI client_id or client_secret missing. Please provide these credentials.')
      end
      response = connection.post(access_endpoint,
                                 client_id: gapi_client_id,
                                 client_secret: gapi_client_secret,
                                 grant_type: 'client_credentials')

      case response.status
      when 200
        token = response.body['access_token']
        return token
      else
        raise AuthenticationError.new("Could not authenticate with gap's servers. Please check your client id and secret.")
      end
    end

    def access_endpoint
      '/oauth/token'
    end

    def api_base_url
      '/api/v1/'
    end
  end
end
