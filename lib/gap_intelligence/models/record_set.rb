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
  end
end
