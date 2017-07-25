module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/product_presence
  module ProductPresence
    # Requests and returns product presences
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [ProudctPresence] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/product_presence/index.html
    def product_presence(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, Record)
      perform_request(:get, 'product_presence', options.merge(params: params), &block)
    end
  end
end
