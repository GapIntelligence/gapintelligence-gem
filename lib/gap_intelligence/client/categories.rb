module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/categories.html
  module Categories
    # Requests and returns a list of categories
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Category>] the list of requested categories
    # @see https://api.gapintelligence.com/api/doc/v1/categories/index.html
    def categories(params = {}, options = {}, &block)
      default_option(options, :record_class, Category)
      perform_request(:get, 'categories', options.merge(params: params), &block)
    end
  end
end
