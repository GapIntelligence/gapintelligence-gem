module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/product_snapshots
  module ProductSnapshot
    # Requests and returns product snapshot
    #
    # @param product_id [Hash] product identifier
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [ProudctSnapshot] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/product_snapshots/show.html
    def product_snapshot(product_id, params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, Record)
      perform_request(:get, build_resource_path('product_snapshots', product_id), options.merge(params: params), &block)
    end
  end
end
