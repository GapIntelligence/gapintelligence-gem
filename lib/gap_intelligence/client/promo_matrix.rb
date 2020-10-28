module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix.html
  module PromoMatrix
    # Requests and returns a list of products
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<PromoMatrixProductVersion>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix/product_versions.html
    def promo_matrix_product_versions(params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixProductVersion)
      perform_request(:get, 'promo_matrix/product_versions', options.merge(params: params), &block)
    end

    # Requests and returns a list of product placements
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<PromoMatrixProductVersion>] the list of requested product placements
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix/product_placements.html
    def promo_matrix_product_placements(params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixProductVersion)
      perform_request(:get, 'promo_matrix/product_placements', options.merge(params: params), &block)
    end

    # Requests and returns a list of pricing data
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<PromoMatrixPricing>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix/pricings.html
    def promo_matrix_pricings(params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixPricing)
      perform_request(:get, 'promo_matrix/pricings', options.merge(params: params), &block)
    end
  end
end
