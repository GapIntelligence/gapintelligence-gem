require 'forwardable'

module GapIntelligence
  class RecordSet
    extend Forwardable
    include Enumerable

    attr_accessor :meta

    def_delegators :@records, :each, :[], :to_ary

    def initialize(records = nil, options = {})
      @records = records || []
      @meta = options[:meta]
    end

    def total_pages
      pagination['total_pages']
    end

    def current_page
      pagination['current_page']
    end

    def limit_value
      pagination['total_count'] / total_pages if pagination['total_count'] && total_pages.to_i > 0
    end

    private

    def pagination
      @pagination ||= meta ? meta.fetch('pagination', {}) : {}
    end
  end
end
