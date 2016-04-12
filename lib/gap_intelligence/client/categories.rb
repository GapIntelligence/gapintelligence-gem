module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/categories.html
  module Categories
    # Requests and returns a list of categories
    #
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Category>] the list of requested categories
    # @see http://api.gapintelligence.com/api/doc/v1/categories/index.html
    def categories(options = {}, &block)
      perform_request(:get, 'categories', options.merge(record_class: Category), &block)
    end
  end
end
