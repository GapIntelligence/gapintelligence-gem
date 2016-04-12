module GapIntelligence
  module Downloads
    # Requests and returns downloads
    #
    # @param options [Hash] the options to make the request with
    # @yield [request] The Faraday request
    def downloads(options = {}, &block)
      perform_request(:get, 'downloads', options.merge(record_class: Download), &block)
    end

    # Creates new download
    #
    # @param body [Hash, String] the body of the request
    # @param options [Hash] the options to make the request with
    # @yield [request] The Faraday request
    def create_download(body, options = {}, &block)
      perform_request(:post, 'downloads', options.merge(body: body, record_class: Download), &block)
    end
  end
end
