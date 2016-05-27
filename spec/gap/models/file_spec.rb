require 'spec_helper'

describe GapIntelligence::File do
  include_examples 'Record'

  describe 'attributes' do
    subject(:file) { described_class.new build(:file) }

    it 'has url' do
      expect(file).to respond_to(:url)
    end
  end
end
