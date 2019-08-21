module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/ad_pages.html
  module AdPages
    # Requests and returns an ad pages
    #
    # @param ad_image_id [String] ad image id
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<AdPage>] collection of ad pages
    # @see https://api.gapintelligence.com/api/doc/v1/ad_pages/index.html
    def ad_pages(ad_image_id, options = {}, &block)
      default_option(options, :record_class, AdPage)
      perform_request(:get, build_resource_path('ad_images', ad_image_id, 'ad_pages'), options, &block)
    end

    # Requests and returns an ad page
    #
    # @param ad_page_id [String] ad page public id
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [AdImage] the ad image with requested ad page
    # @see https://api.gapintelligence.com/api/doc/v1/ad_pages/show.html
    def ad_page(ad_page_id, options = {}, &block)
      default_option(options, :record_class, AdImage)
      perform_request(:get, build_resource_path('ad_pages', ad_page_id), options, &block)
    end
  end
end
