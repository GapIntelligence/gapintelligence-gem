module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/files.html
  module Files
    # Requests and returns files
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [Record<File>] the requested files
    # @see http://api.gapintelligence.com/api/doc/v1/files.html
    def files(params = {}, options = {}, &block)
      default_option(options, :record_class, File)
      perform_request(:get, 'files', options.merge(params: params), &block)
    end
  end
end
