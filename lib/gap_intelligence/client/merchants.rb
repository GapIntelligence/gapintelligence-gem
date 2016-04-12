module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/merchants.html
  module Merchants
    # Requests a list of merchants
    #
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Merchant>] the requested merchants
    # @see http://api.gapintelligence.com/api/doc/v1/merchants/index.html
    def merchants(options = {}, &block)
      perform_request(:get, 'merchants', options.merge(record_class: Merchant), &block)
    end
  end
end
