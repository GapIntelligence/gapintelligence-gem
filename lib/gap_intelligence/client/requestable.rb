module GapIntelligence
  module Requestable
    # Makes a request to a specified endpoint
    #
    # @param [Symbol] method one of :get, :post, :put, :delete
    # @param [String] path URL path of request
    # @param [Hash] options the options to make the request with
    # @yield [req] The Faraday request
    def perform_request(method, path, options = {}, &block)
      record_class = options.delete(:record_class)
      options[:headers] = headers
      options[:raise_errors] = false

      response = connection.request(method, path, options, &block)
      hash = response.parsed

      return RequestError.new(hash['error']) if response.error

      data = hash['data']

      case data
      when Array
        objects = record_class.nil? ? data : data.collect{ |object| record_class.new(object) }
        RecordSet.new(objects, meta: hash.fetch('meta', {}))
      when Hash
        record_class.nil? ? data : record_class.new(data)
      end
    end

    private
    def default_option(opts, key, value)
      opts[key] = opts.fetch(key, value)
    end

    def build_resource_path(*path)
      URI.parse(path.join('/')).path
    end
  end
end
