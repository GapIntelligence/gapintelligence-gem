require 'spec_helper'

describe GapIntelligence::MerchantPricingTrend do
  include_examples 'Record'

  describe 'attributes' do
    subject(:merchant_pricing_trend) { described_class.new build(:merchant_pricing_trend) }

    it 'has values' do
      expect(merchant_pricing_trend).to respond_to(:values)
    end

    it 'has headers' do
      expect(merchant_pricing_trend).to respond_to(:headers)
    end
  end
end
