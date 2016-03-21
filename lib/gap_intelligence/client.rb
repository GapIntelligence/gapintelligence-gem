module GapIntelligence
  class Client
    attr_reader :connection, :client_id, :client_secret

    def initialize
      @connection = Faraday.new(:url => 'http://api.gapintelligence.com') do |conn|
        conn.headers['Content-Type'] = 'application/json'
        conn.response :json, :content_type => /\bjson$/
        conn.adapter Faraday.default_adapter
      end
    end

    def client_id=(id)
      @client_id = id
    end

    def client_secret=(secret)
      @client_secret = secret
    end

    def pricings
      request :pricings
    end

    def request(resource, action=nil)
      if !authenticated?
        authenticate
      end

      connection.get [api_base_url, resource, action].join('/')

    end

    def authenticated?
      connection.headers['Authorization'] &&
      connection.headers['Authorization'].matches(/Bearer/)
    end

    def authenticate
      connection.headers['Authorization'] = "Bearer #{get_token}"
    end

    def get_token
      unless client_id && client_secret
        raise ConfigurationError.new("API client_id or client_secret missing. Please provide these credentials.")
      end
      response = connection.post(access_endpoint,
                                 client_id: client_id,
                                 client_secret: client_secret,
                                 grant_type: 'client_credentials' )

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
