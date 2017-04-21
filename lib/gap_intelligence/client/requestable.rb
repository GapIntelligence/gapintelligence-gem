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
      raise_error = options.fetch(:raise_errors, raise_errors)
      options[:headers] = headers
      options[:raise_errors] = false
      options[:init_with_response_body] = options.fetch(:init_with_response_body, false)

      response = connection.request(method, path, options, &block)

      if response.error
        error = RequestError.new(parse_error_message(response))
        raise(error) if raise_error
        return nil
      end

      return instantiate_record(record_class, response_body: response.body) if options[:init_with_response_body]

      hash = response.parsed
      data = hash['data']

      case data
      when Array
        objects = record_class.nil? ? data : data.collect{ |object| record_class.new(object) }
        RecordSet.new(objects, meta: hash.fetch('meta', {}))
      when Hash
        instantiate_record(record_class, data)
      end
    end

    private
    def instantiate_record(record_class, data)
      record_class.nil? ? data : record_class.new(data)
    end

    def default_option(opts, key, value)
      opts[key] = opts.fetch(key, value)
    end

    def build_resource_path(*path)
      URI.parse(path.join('/')).path
    end

    def parse_error_message(response)
      if response.parsed && response.parsed['error']
        response.parsed['error']
      else
        response.error
      end
    end
  end
end
