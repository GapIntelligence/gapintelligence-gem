module GapIntelligence
  class Client
    attr_reader :connection

    attr_accessor :client_id,
                  :client_secret

    def initialize(client_id = nil, client_secret = nil)
      @client_id = client_id
      @client_secret = client_secret
    end

    def connection
      if !@connection
        create_connection!
      elsif @connection.expired?
        refresh_connection!
      end

      @connection
    end

    def pricings
      request(:pricings)
    end

    def create_connection!
      raise ConfigurationError.new('Please provide a client_id and client_secret before making requests.') unless client_id && client_secret

      begin
        @connection = OAuth2::Client.new(client_id, client_secret, site: 'http://api.gapintelligence.com')
                                    .client_credentials
                                    .get_token
      rescue OAuth2::Error
        raise AuthenticationError.new('Unable to authenticate with the gAPI, please check your client_id and client_secret.')
      end
    end

    def refresh_connection!
      @connection.refresh!
    end

    def request(resource, action = nil)
      connection
        .get(
          [api_base_url, resource, action]
          .join('/'))
        .parsed
    end

    def api_base_url
      '/api/v1/'
    end
  end
end
