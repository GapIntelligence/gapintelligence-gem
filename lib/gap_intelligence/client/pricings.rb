module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/pricings.html
  module Pricings
    # Requests a list of pricings
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Pricing>] the requested pricings
    # @see https://api.gapintelligence.com/api/doc/v1/pricings/index.html
    def pricings(params = {}, options = {}, &block)
      default_option(options, :record_class, Pricing)
      perform_request(:get, 'pricings', options.merge(params: params), &block)
    end
  end
end
