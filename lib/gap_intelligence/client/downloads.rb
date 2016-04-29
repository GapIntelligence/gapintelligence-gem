module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/downloads
  module Downloads

    # Creates new download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param params [Hash] parameters that will be the JSON payload of the http request
    # @param options [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [Download] the created download
    # @return [RequestError] error messages
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/create.html
    def create_download(owner_id, params, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:post, 'downloads', options.merge(body: { owner_id: owner_id, download: params }), &block)
    end

    # Requests and returns downloads
    #
    # @param owner_id [String,Integer] owner id of the downloads
    # @param params [Hash] parameters of the http request
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [RecordSet<Download>] collection of downloads
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/index.html
    def downloads(owner_id, params = {}, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:get, 'downloads', options.merge(params: params.merge(owner_id: owner_id)), &block)
    end
  end
end
