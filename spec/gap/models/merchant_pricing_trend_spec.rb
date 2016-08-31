require 'spec_helper'

describe GapIntelligence::MerchantPricingTrend do
  include_examples 'Record'

  let!(:merchant_pricing_trend_data) { build(:merchant_pricing_trend) }
  let!(:response_body) { { data: merchant_pricing_trend_data }.to_json }
  let!(:merchant_pricing_trend) { described_class.new response_body: response_body }

  describe 'attributes' do
    it 'has raw' do
      expect(merchant_pricing_trend).to respond_to(:raw)
    end

    it 'returns response_body in raw[:response_body]' do
      expect(merchant_pricing_trend.raw[:response_body]).to eq response_body
    end
  end
end
