require 'spec_helper'

describe GapIntelligence::Header do
  include_examples 'Record'

  describe 'attributes' do
    subject(:header) { described_class.new build(:header) }

    it 'has name' do
      expect(header).to respond_to(:name)
    end

    it 'has unit' do
      expect(header).to respond_to(:unit)
    end

    it 'has core_header' do
      expect(header).to respond_to(:core_header)
    end

    it 'has position' do
      expect(header).to respond_to(:position)
    end
  end
end
