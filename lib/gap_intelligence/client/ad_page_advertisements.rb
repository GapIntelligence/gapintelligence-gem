module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/ad_page_advertisements.html
  module AdPageAdvertisements
    # Requests and returns a list of ad_page_advertisements
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [AdPageAdvertisement] the list of requested ad_page_advertisements
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/ad_page_advertisements/index.html
    def ad_page_advertisements(params = {}, options = {}, &block)
      default_option(options, :record_class, AdPageAdvertisement)
      perform_request(:get, 'ad_page_advertisements', options.merge(params: params), &block)
    end
  end
end
