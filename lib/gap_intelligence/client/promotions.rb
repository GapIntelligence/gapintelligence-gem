module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/promotions.html
  module Promotions
    # Requests a list of promotions
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Promotion>] the requested promotions
    # @see https://api.gapintelligence.com/api/doc/v1/promotions/index.html
    def promotions(params = {}, options = {}, &block)
      default_option(options, :record_class, Promotion)
      perform_request(:get, 'promotions', options.merge(params: params), &block)
    end
  end
end
