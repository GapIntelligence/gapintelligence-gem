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

    # Requests and returns a in store image
    #
    # @param id [String,Integer] in store image id
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [AdImage] the requested in store image
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/in_store_images/show.html
    def in_store_image(id, options = {}, &block)
      default_option(options, :record_class, AdImage)
      perform_request(:get, build_resource_path('in_store_images', id), options, &block)
    end
  end
end
