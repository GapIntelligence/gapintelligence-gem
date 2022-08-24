module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/delta.html
  module Delta
    # Requests a delta report
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [Record] the list of requested data
    # @see https://api.gapintelligence.com/api/doc/v1/delta/aggregate.html
    def delta_aggregate(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, Record)
      perform_request(:post, 'delta/aggregate', options.merge(body: params), &block)
    end
  end
end
