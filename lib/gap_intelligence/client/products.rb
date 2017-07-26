module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/products.html
  module Products
    # Requests and returns a list of products
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Category>] the list of requested products
    # @see https://api.gapintelligence.com/api/doc/v1/products/index.html
    def products(params = {}, options = {}, &block)
      default_option(options, :record_class, Product)
      perform_request(:get, 'products', options.merge(params: params), &block)
    end

    def product(product_id, options = {}, &block)
      default_option(options, :record_class, Product)
      perform_request(:get, build_resource_path('products', product_id), options, &block)
    end
  end
end
