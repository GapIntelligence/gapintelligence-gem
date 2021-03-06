module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trend_downloads.html
  module MerchantPricingTrendDownloads
    # Creates new merchant pricing trend download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param params [Hash] parameters that will be the JSON payload of the http request
    # @param options [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [MerchantPricingTrendDownload] the created merchant pricing trend download
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trend_downloads/create.html
    def create_merchant_pricing_trend_download(owner_id, params, options = {}, &block)
      default_option(options, :record_class, MerchantPricingTrendDownload)
      perform_request(:post, 'merchant_pricing_trend_downloads', options.merge(body: { owner_id: owner_id, merchant_pricing_trend_download: params }), &block)
    end

    # Requests and returns merchant pricing trend downloads
    #
    # @param owner_id [String,Integer] owner id of the merchant pricing trend downloads
    # @param params [Hash] parameters of the http request
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [RecordSet<MerchantPricingTrendDownload>] collection of merchant pricing trend downloads
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trend_downloads/index.html
    def merchant_pricing_trend_downloads(owner_id, params = {}, options = {}, &block)
      default_option(options, :record_class, MerchantPricingTrendDownload)
      perform_request(:get, 'merchant_pricing_trend_downloads', options.merge(params: params.merge(owner_id: owner_id)), &block)
    end

    # Requests and returns a merchant pricing trend download
    #
    # @param owner_id [String,Integer] owner id of the merchant pricing trend downloads
    # @param download_id [String,Integer] id of the merchant pricing trend download
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [MerchantPricingTrendDownload] the requested merchant pricing trend download
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trend_downloads/show.html
    def merchant_pricing_trend_download(owner_id, download_id, options = {}, &block)
      default_option(options, :record_class, MerchantPricingTrendDownload)
      perform_request(:get, build_resource_path('merchant_pricing_trend_downloads', download_id), options.merge(params: { owner_id: owner_id }), &block)
    end

    # Deletes merchant pricing trend downloads
    #
    # @param owner_id [String,Integer] owner id of the merchant pricing trend downloads
    # @param download_ids [Integer] id of the merchant pricing trend downloads
    # @param options [Hash] the options to make the request with
    # @yield [request] The Faraday request
    # @return [Hash] Response
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/merchant_pricing_trend_downloads/destroy.html
    def delete_merchant_pricing_trend_download(owner_id, download_ids, options = {}, &block)
      perform_request(:delete, 'merchant_pricing_trend_downloads', options.merge(body: { owner_id: owner_id, ids: download_ids }), &block)
    end
  end
end
