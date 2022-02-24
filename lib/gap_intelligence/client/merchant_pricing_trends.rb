module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trends.html
  module MerchantPricingTrends
    # Requests a list of merchant pricing trends
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [MerchantPricingTrend] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trends/index.html
    def merchant_pricing_trends(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, MerchantPricingTrend)
      perform_request(:get, 'merchant_pricing_trends', options.merge(params: params), &block)
    end

    # Requests and returns a list of products
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<MerchantPricingTrendProductVersion>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trends/product_versions.html
    def merchant_pricing_trends_product_versions(params = {}, options = {}, &block)
      default_option(options, :record_class, MerchantPricingTrendProductVersion)
      perform_request(:post, 'merchant_pricing_trends/product_versions', options.merge(body: params), &block)
    end

    # Requests and returns a list of pricing data
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<MerchantPricingTrendPricing>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trends/pricings.html
    def merchant_pricing_trends_pricings(params = {}, options = {}, &block)
      default_option(options, :record_class, MerchantPricingTrendPricing)
      perform_request(:post, 'merchant_pricing_trends/pricings', options.merge(body: params), &block)
    end
  end
end
