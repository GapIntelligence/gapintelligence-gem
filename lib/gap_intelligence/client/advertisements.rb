module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/advertisements.html
  module Advertisements
    # Requests a list of advertisements
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Advertisement>] the requested merchants
    # @see https://api.gapintelligence.com/api/doc/v1/advertisements/index.html
    def advertisements(params = {}, options = {}, &block)
      default_option(options, :record_class, Advertisement)
      perform_request(:get, 'advertisements', options.merge(params: params), &block)
    end
  end
end
