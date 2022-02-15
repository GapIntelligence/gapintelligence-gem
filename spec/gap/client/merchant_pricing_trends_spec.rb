require 'spec_helper'

describe GapIntelligence::MerchantPricingTrends do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#merchant_pricing_trends' do
    let(:params) { { owner_id: 1, categories: [20], countries: ['Country 1'], start_at: '2016-01-01', end_at: '2016-02-02' } }
    before { stub_api_request(:get, response: { data: build(:merchant_pricing_trend) }) }
    subject(:record) { client.merchant_pricing_trends(params) }

    it 'requests the endpoint' do
      client.merchant_pricing_trends(params)
      expect(api_get('/merchant_pricing_trends').with(query: params)).to have_been_made
    end

    it 'returns MerchantPricingTrend instance' do
      expect(record).to be_instance_of(GapIntelligence::MerchantPricingTrend)
    end
  end

  describe '#merchant_pricing_trends_product_versions' do
    let(:params) { { category_versions: 19, start_at: '2022-01-01', end_at: '2022-02-02' } }
    before { stub_api_request(:post, url: '/merchant_pricing_trends/product_versions', response: { data: build(:merchant_pricing_trends_product_versions) }) }
    subject(:record) { client.merchant_pricing_trends_product_versions(params) }

    it 'requests the endpoint' do
      client.merchant_pricing_trends_product_versions(params)
      expect(api_post('/merchant_pricing_trends/product_versions').with(body: { category_versions: 19.to_s, start_at: '2022-01-01', end_at: '2022-02-02' })).to have_been_made
    end

    it 'returns MerchantPricingTrendProductVersion instance' do
      expect(record).to be_instance_of(GapIntelligence::MerchantPricingTrendProductVersion)
    end
  end

  describe '#merchant_pricing_trends_pricings' do
    let(:params){ { product_version_id: 1, merchant_id: 1, start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:get, response: { data: build(:merchant_pricing_trends_pricings) }) }
    subject(:record) { client.merchant_pricing_trends_pricings(params) }

    it 'requests the endpoint' do
      client.merchant_pricing_trends_pricings(params)
      expect(api_get('/merchant_pricing_trends/pricings', query: params)).to have_been_made
    end

    it 'returns MerchantPricingTrendPricing instance' do
      expect(record).to be_instance_of(GapIntelligence::MerchantPricingTrendPricing)
    end
  end
end
