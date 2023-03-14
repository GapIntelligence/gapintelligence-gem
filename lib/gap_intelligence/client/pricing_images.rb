module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/pricing_images.html
  module PricingImages
    # Requests and returns an pricing image
    #
    # @param id [String] pricing image public id
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [PricingImage] with in store image attribute
    # @see https://api.gapintelligence.com/api/doc/v1/pricing_images/show.html
    def pricing_image(id, options = {}, &block)
      default_option(options, :record_class, PricingImage)
      perform_request(:get, build_resource_path('pricing_images', id), options, &block)
    end
  end
end
