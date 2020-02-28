
module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/countries.html
  module Countries
    # Requests a list of countries
    #
    # @yield [req] The Faraday request
    # @return [RecordSet<Country>] the requested country
    # @see https://api.gapintelligence.com/api/doc/v1/countries/index.html
    def countries(params = {}, options = {}, &block)
      default_option(options, :record_class, Country)
      perform_request(:get, 'countries', options.merge(params: params), &block)
    end
  end
end
