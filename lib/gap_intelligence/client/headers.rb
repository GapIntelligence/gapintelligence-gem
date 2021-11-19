module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/headers.html
  module Headers
    # Requests a list of advertisement headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/advertisements.html
    def advertisement_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/advertisements', options.merge(params: params), &block)
    end

    # Requests a list of promotion headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/promotions.html
    def promotion_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/promotions', options.merge(params: params), &block)
    end

    # Requests a list of pricing headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/pricings.html
    def pricing_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/pricings', options.merge(params: params), &block)
    end

    # Requests a list of specification headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/specifications.html
    def specification_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/specifications', options.merge(params: params), &block)
    end

    # Requests a list of average contract pricings headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/average_contract_pricings.html
    def average_contract_pricing_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/average_contract_pricings', options.merge(params: params), &block)
    end

    # Requests a list of dealer costs headers headers
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [RecordSet<Header>] the requested headers
    # @see https://api.gapintelligence.com/api/doc/v1/headers/dealer_costs.html
    def dealer_cost_headers(params = {}, options = {}, &block)
      default_option(options, :record_class, Header)
      perform_request(:get, 'headers/dealer_costs', options.merge(params: params), &block)
    end
  end
end
