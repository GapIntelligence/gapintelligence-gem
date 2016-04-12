module GapIntelligence
  # @see http://api.gapintelligence.com/api/doc/v1/downloads
  module Downloads

    # Creates new download
    #
    # @param [Hash] params the body of the request
    # @param [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [Download] the created download
    # @return [RequestError] error messages
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/create.html
    def create_download(params, options = {}, &block)
      perform_request(:post, 'downloads', options.merge(body: { download: params }, record_class: Download), &block)
    end

    # Requests and returns downloads
    #
    # @param [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [RecordSet<Download>] collection of downloads
    # @see http://api.gapintelligence.com/api/doc/v1/downloads/index.html
    def downloads(options = {}, &block)
      perform_request(:get, 'downloads', options.merge(record_class: Download), &block)
    end
  end
end
