module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/ad_images.html
  module AdImages
    # Requests and returns a list of ad_images
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [AdImage] the list of requested ad_images and their ad_pages
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/ad_images/index.html
    def ad_images(params = {}, options = {}, &block)
      default_option(options, :record_class, AdImage)
      perform_request(:get, 'ad_images', options.merge(params: params), &block)
    end
  end
end
