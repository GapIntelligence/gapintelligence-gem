module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/notes_and_changes.html
  module NotesAndChanges
    # Requests Notes and Changes data
    #
    # @param params [Hash] parameters of the http request
    # @param options [Hash] the options to make the request with
    # @yield [req] The Faraday request
    # @return [NotesAndChangesRecord] the requested data
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/notes_and_changes/index.html
    def notes_and_changes(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, NotesAndChangesRecord)
      perform_request(:get, 'notes_and_changes', options.merge(params: params), &block)
    end
  end
end
