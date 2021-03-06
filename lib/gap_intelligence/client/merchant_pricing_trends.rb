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
  end
end
