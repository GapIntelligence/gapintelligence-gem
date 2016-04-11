module GapIntelligence
  module Downloads
    # Requests and returns downloads
    #
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    def downloads(options = {}, &block)
      perform_request(:get, 'downloads', options.merge(record_class: Download), &block)
    end

    # Creates new download
    #
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    def create_download(options, &block)
      perform_request(:post, 'downloads', options.merge(record_class: Download), &block)
    end
  end
end
