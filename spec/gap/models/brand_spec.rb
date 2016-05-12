require 'spec_helper'

describe GapIntelligence::Brand do
  describe 'attributes' do
    subject(:brand) { described_class.new build(:brand) }

    it 'has name' do
      expect(brand).to respond_to(:name)
    end
  end
end
