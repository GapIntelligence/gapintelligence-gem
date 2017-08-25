module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/product_snapshot
  module ProductSnapshot
    # Requests and returns product snapshots
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [ProudctSnapshot] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/product_snapshot/index.html
    def product_snapshot(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, Record)
      perform_request(:get, 'product_snapshot', options.merge(params: params), &block)
    end
  end
end
