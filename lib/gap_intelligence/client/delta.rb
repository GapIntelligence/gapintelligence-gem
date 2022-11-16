module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/delta.html
  module Delta
    # Requests a delta report
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [DeltaAggregateRecord] the list of requested data
    # @see https://api.gapintelligence.com/api/doc/v1/delta/aggregate.html
    def delta_aggregate(params = {}, options = {}, &block)
      default_option(options, :record_class, DeltaAggregateRecord)
      perform_request(:post, 'delta/aggregate', options.merge(body: params), &block)
    end

    # Requests delta product versions data
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [DeltaProductVersion] the list of requested data
    # @see https://api.gapintelligence.com/api/doc/v1/delta/product_versions.html
    def delta_product_versions(params = {}, options = {}, &block)
      default_option(options, :record_class, DeltaProductVersion)
      perform_request(:post, 'delta/product_versions', options.merge(body: params), &block)
    end

    # Requests delta pricings data
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [DeltaPricing] the list of requested data
    # @see https://api.gapintelligence.com/api/doc/v1/delta/pricings.html
    def delta_pricings(params = {}, options = {}, &block)
      default_option(options, :record_class, DeltaPricing)
      perform_request(:post, 'delta/pricings', options.merge(body: params), &block)
    end
  end
end
