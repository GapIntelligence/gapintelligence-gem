module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/in_store_images.html
  module InStoreImages
    # Requests and returns in store images
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<InStoreImage>] collection of ad pages
    # @see https://api.gapintelligence.com/api/doc/v1/in_store_images/index.html
    def in_store_images(params = {}, options = {}, &block)
      default_option(options, :record_class, InStoreImage)
      perform_request(:get, 'in_store_images', options.merge(params: params), &block)
    end
  end
end
