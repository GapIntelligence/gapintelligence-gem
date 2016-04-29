module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/downloads
  module Downloads

    # Creates new download
    #
    # @param params [Hash] parameters that will be the JSON payload of the http request
    # @param options [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [Download] the created download
    # @return [RequestError] error messages
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/create.html
    def create_download(params, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:post, 'downloads', options.merge(body: { download: params }), &block)
    end

    # Requests and returns downloads
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [RecordSet<Download>] collection of downloads
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/index.html
    def downloads(params = {}, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:get, 'downloads', options.merge(params: params), &block)
    end
  end
end
