require 'forwardable'

module GapIntelligence
  class RecordSet
    extend Forwardable
    include Enumerable

    attr_accessor :meta

    def_delegators :@records, :each, :[]

    def initialize(records=nil, options={})
      @records = records || []
      @meta = options[:meta]
    end
  end
end
