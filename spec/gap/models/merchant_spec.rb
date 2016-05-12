require 'spec_helper'

describe GapIntelligence::Merchant do
  include_examples 'Record'

  describe 'attributes' do
    subject(:merchant) { described_class.new build(:merchant) }

    it 'has name' do
      expect(merchant).to respond_to(:name)
    end

    it 'has merchant_type' do
      expect(merchant).to respond_to(:merchant_type)
    end

    it 'has channel' do
      expect(merchant).to respond_to(:channel)
    end

    it 'has country_code' do
      expect(merchant).to respond_to(:country_code)
    end
  end
end
