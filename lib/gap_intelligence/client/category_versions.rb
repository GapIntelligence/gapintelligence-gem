module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/category_versions.html
  module CategoryVersions
    # Requests a list of category versions
    #
    # @yield [req] The Faraday request
    # @return [RecordSet<CategoryVersion>] the requested country
    # @see https://api.gapintelligence.com/api/doc/v1/category_versions/index.html
    def category_versions(params = {}, options = {}, &block)
      default_option(options, :record_class, CategoryVersion)
      perform_request(:get, 'category_versions', options.merge(params: params), &block)
    end
  end
end
