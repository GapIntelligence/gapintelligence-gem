module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix.html
  module PromoMatrix
    # Requests and returns a list of products
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Category>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/products/index.html
    def product_versions(category_version_id, merchant_id, start_at, end_at, params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixProductVersion)
      required_params = { category_version_id: category_version_id, merchant_id: merchant_id, start_at: start_at, end_at: end_at }
      perform_request(:get, 'promo_matrix/product_versions', options.merge(params: params.merge(required_params)), &block)
    end

    def pricings(product_version_id, merchant_id, start_at, end_at, options = {}, &block)
      default_option(options, :record_class, PromoMatrixPricing)
      required_params = { product_version_id: product_version_id, merchant_id: merchant_id, start_at: start_at, end_at: end_at }
      perform_request(:get, 'promo_matrix/pricings', options.merge(params: params.merge(required_params)), &block)
    end
  end
end
