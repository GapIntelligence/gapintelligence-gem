require 'gap_intelligence/client/requestable'
require 'gap_intelligence/client/ad_images'
require 'gap_intelligence/client/ad_pages'
require 'gap_intelligence/client/ad_page_advertisements'
require 'gap_intelligence/client/ad_shares'
require 'gap_intelligence/client/advertisements'
require 'gap_intelligence/client/brands'
require 'gap_intelligence/client/categories'
require 'gap_intelligence/client/category_versions'
require 'gap_intelligence/client/countries'
require 'gap_intelligence/client/downloads'
require 'gap_intelligence/client/files'
require 'gap_intelligence/client/headers'
require 'gap_intelligence/client/merchants'
require 'gap_intelligence/client/merchant_pricing_trends'
require 'gap_intelligence/client/merchant_pricing_trend_downloads'
require 'gap_intelligence/client/notes_and_changes'
require 'gap_intelligence/client/products'
require 'gap_intelligence/client/product_presence'
require 'gap_intelligence/client/promotions'

module GapIntelligence
  class Client
    include Requestable
    include AdImages
    include AdPages
    include AdPageAdvertisements
    include AdShares
    include Advertisements
    include Brands
    include Countries
    include Categories
    include CategoryVersions
    include Downloads
    include Merchants
    include MerchantPricingTrends
    include MerchantPricingTrendDownloads
    include NotesAndChanges
    include Products
    include ProductPresence
    include Promotions
    include Headers
    include Files

    attr_reader :connection

    attr_accessor :client_id,
                  :client_secret,
                  :host,
                  :port,
                  :use_ssl,
                  :scope,
                  :connection_build,
                  :connection_opts,
                  :raise_errors

    def initialize(config = {}, &block)
      @client_id = config[:client_id]         || GapIntelligence.config.client_id
      @client_secret = config[:client_secret] || GapIntelligence.config.client_secret
      @host = config[:host]                   || GapIntelligence.config.host
      @port = config[:port]                   || GapIntelligence.config.port
      @use_ssl = config[:use_ssl]             || GapIntelligence.config.use_ssl
      @scope = config[:scope]
      @connection_build = block               || GapIntelligence.config.connection_build
      @raise_errors = config[:raise_errors]   || GapIntelligence.config.raise_errors

      @connection_opts = config[:connection_opts] || GapIntelligence.config.connection_opts
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
        client_params = {}
        client_params[:scope] = @scope if @scope
        OAuth2::Client.new(client_id, client_secret, { site: api_base_uri, connection_opts: connection_opts }, &connection_build)
                      .client_credentials
                      .get_token(client_params, 'auth_scheme' => 'request_body')
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

    def api_base_uri
      ( use_ssl ? URI::HTTPS : URI::HTTP).build(host: host, port: port)
    end
  end
end
