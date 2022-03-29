module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/pricing_imagess.html
  module PricingImages
    # Requests and returns an pricing image
    #
    # @param pricing_image_id [String] pricing image public id
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [InStoreImage] the in store image with requested pricing image
    # @see https://api.gapintelligence.com/api/doc/v1/pricing_images/show.html
    def pricing_image(pricing_image_id, options = {}, &block)
      default_option(options, :record_class, InStoreImage)
      perform_request(:get, build_resource_path('pricing_images', pricing_image_id), options, &block)
    end
  end
end
