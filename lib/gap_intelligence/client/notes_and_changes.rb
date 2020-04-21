module GapIntelligence
  module NotesAndChanges
    def notes_and_changes(params = {}, options = {}, &block)
      options[:init_with_response_body] = true
      default_option(options, :record_class, NotesAndChangesRecord)
      perform_request(:get, 'notes_and_changes', options.merge(params: params), &block)
    end
  end
end
