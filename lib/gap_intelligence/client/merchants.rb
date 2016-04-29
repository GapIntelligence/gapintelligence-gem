module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/merchants.html
  module Merchants
    # Requests a list of merchants
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Merchant>] the requested merchants
    # @see http://api.gapintelligence.com/api/doc/v1/merchants/index.html
    def merchants(params = {}, options = {}, &block)
      default_option(options, :record_class, Merchant)
      perform_request(:get, 'merchants', options.merge(params: params), &block)
    end
  end
end
