require 'spec_helper'

describe GapIntelligence::MerchantPricingTrends do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#merchant_pricing_trends' do
    let(:owner_id) { 1 }
    let(:params) { { categories: [20], countries: ['Country 1'], start_at: '2016-01-01', end_at: '2016-02-02' } }
    before { stub_api_request(:get, response: { data: build(:merchant_pricing_trend) }) }
    subject(:record) { client.merchant_pricing_trends(owner_id, params) }

    it 'requests the endpoint' do
      client.merchant_pricing_trends(owner_id, params)
      expect(api_get('/merchant_pricing_trends').with(query: params.merge(owner_id: 1))).to have_been_made
    end

    it 'returns MerchantPricingTrend instance' do
      expect(record).to be_instance_of(GapIntelligence::MerchantPricingTrend)
    end
  end
end
