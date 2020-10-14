module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix.html
  module PromoMatrix
    # Requests and returns a list of products
    #
    # @param category_version_id [String,Integer] category version identifier
    # @param merchant_id [String,Integer] merchant identifier
    # @param start_at [String] start date in format YYYY-MM-DD
    # @param end_at [String] end date in format YYYY-MM-DD
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<PromoMatrixProductVersion>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix/product_versions.html
    def promo_matrix_product_versions(category_version_id, merchant_id, start_at, end_at, params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixProductVersion)
      required_params = { category_version_id: category_version_id, merchant_id: merchant_id, start_at: start_at, end_at: end_at }
      perform_request(:get, 'promo_matrix/product_versions', options.merge(params: params.merge(required_params)), &block)
    end

    # Requests and returns a list of pricing data
    #
    # @param product_version_id [String,Integer] product version identifier
    # @param merchant_id [String,Integer] merchant identifier
    # @param start_at [String] start date in format YYYY-MM-DD
    # @param end_at [String] end date in format YYYY-MM-DD
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<PromoMatrixPricing>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix/pricings.html
    def promo_matrix_pricings(product_version_id, merchant_id, start_at, end_at, params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixPricing)
      required_params = { product_version_id: product_version_id, merchant_id: merchant_id, start_at: start_at, end_at: end_at }
      perform_request(:get, 'promo_matrix/pricings', options.merge(params: params.merge(required_params)), &block)
    end
  end
end
