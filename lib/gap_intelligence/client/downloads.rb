module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/downloads
  module Downloads

    # Creates new download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param params [Hash] parameters that will be the JSON payload of the http request
    # @param options [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [Download] the created download
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/downloads/create.html
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
    # @see https://api.gapintelligence.com/api/doc/v1/downloads/index.html
    def downloads(owner_id, params = {}, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:get, 'downloads', options.merge(params: params.merge(owner_id: owner_id)), &block)
    end

    # Requests and returns a download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param download_id [String,Integer] download id
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [Download] the requested download
    # @see https://api.gapintelligence.com/api/doc/v1/downloads/show.html
    def download(owner_id, download_id, options = {}, &block)
      default_option(options, :record_class, Download)
      perform_request(:get, build_resource_path('downloads', download_id), options.merge(params: { owner_id: owner_id }), &block)
    end

    # Deletes download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param download_ids [Integer] id of the download
    # @param options [Hash] the options to make the request with
    # @yield [request] The Faraday request
    # @return [Hash] Response
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/downloads/destroy.html
    def delete_download(owner_id, download_ids, options = {}, &block)
      perform_request(:delete, 'downloads', options.merge(body: { owner_id: owner_id, ids: download_ids }), &block)
    end
  end
end
