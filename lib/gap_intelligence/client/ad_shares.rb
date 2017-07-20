module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/ad_shares
  module AdShares
    # Requests and returns ad shares
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [AdShare] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/ad_shares/index.html
    def ad_shares(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, AdShare)
      perform_request(:get, 'ad_shares', options.merge(params: params), &block)
    end
  end
end
