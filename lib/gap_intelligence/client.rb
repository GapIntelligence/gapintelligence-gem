require 'gap_intelligence/client/requestable'
require 'gap_intelligence/client/downloads'

module GapIntelligence
  class Client
    include Requestable
    include Downloads

    attr_reader :connection

    attr_accessor :client_id,
                  :client_secret

    def initialize(client_id = nil, client_secret = nil)
      @client_id = client_id || GapIntelligence.config.client_id
      @client_secret = client_secret || GapIntelligence.config.client_secret
    end

    # Returns the current connection to gAPI. If the connection is old or
    # has not be established, do whatever is required to provide a connection.
    #
    # @return [OAuth2::AccessToken]
    def connection
      @connection = create_connection! unless connected?
      @connection
    end

    # Checks the current connection to gAPI is established and not expired.
    #
    # @return [Boolean]
    def connected?
      @connection && !@connection.expired?
    end

    # Opens a connection to gAPI
    #
    # @raise [ConfigurationError] If the client is not properly configured properly.
    # @raise [AuthenticationError] If authentication fails for any reason.
    def create_connection!
      raise ConfigurationError unless client_id && client_secret

      begin
        OAuth2::Client.new(client_id, client_secret, site: 'http://api.gapintelligence.com')
                      .client_credentials
                      .get_token({}, 'auth_scheme' => 'request_body')
      rescue OAuth2::Error
        raise AuthenticationError
      end
    end

    # Returns headers
    #
    # @return [Hash]
    def headers
      {
        'Accept' => 'application/vnd.gapintelligence.com; version=1'
      }
    end
  end
end
