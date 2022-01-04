module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/brands.html
  module Brands
    # Requests a list of brands
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Brand>] the requested brands
    # @see https://api.gapintelligence.com/api/doc/v1/brands/index.html
    def brands(params = {}, options = {}, &block)
      default_option(options, :record_class, Brand)
      perform_request(:get, 'brands', options.merge(params: params), &block)
    end

    # Requests a list of printer brands
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Brand>] the requested brands
    # @see https://api.gapintelligence.com/api/doc/v1/brands/printer_brands.html
    def brands(params = {}, options = {}, &block)
      default_option(options, :record_class, Brand)
      perform_request(:get, 'brands/printer_brands', options.merge(params: params), &block)
    end
  end
end
