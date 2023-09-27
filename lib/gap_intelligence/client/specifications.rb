module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/specifications.html
  module Specifications
    # Requests a list of specifications
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Specification>] the requested specifications
    # @see https://api.gapintelligence.com/api/doc/v1/specifications/index.html
    def specifications(params = {}, options = {}, &block)
      default_option(options, :record_class, Specification)
      perform_request(:get, 'specifications', options.merge(params: params), &block)
    end
  end
end
