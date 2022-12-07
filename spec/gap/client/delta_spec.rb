require 'spec_helper'

describe GapIntelligence::Delta do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#delta_aggregate' do
    let(:params){ { category_versions: [1], start_at: '2020-01-01', end_at: '2020-02-01', type: 'pricings', x: 'brand', y: 'merchant' } }
    before { stub_api_request(:post, url: '/delta/aggregate', response: { data: build(:delta_aggregation, x: [{ id: 1, name: 'Brand 1' }], y: [{ id: 1, name: 'Merchant' }], values: [{ x: 1, y: 1, values: 1 }]) }) }
    subject(:record) { client.delta_aggregate(params) }

    it 'requests the endpoint' do
      client.delta_aggregate(params)

      expect(api_post('/delta/aggregate').with(body: { category_versions: [1.to_s], start_at: '2020-01-01', end_at: '2020-02-01', type: 'pricings', x: 'brand', y: 'merchant' })).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::DeltaAggregateRecord)
    end
  end

  describe '#delta_advertisements' do
    let(:params){ { category_versions: [1], start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:post, url: '/delta/advertisements', response: { data: build(:delta_advertisement) }) }
    subject(:record) { client.delta_advertisements(params) }

    it 'requests the endpoint' do
      client.delta_advertisements(params)

      expect(api_post('/delta/advertisements').with(body: { category_versions: [1.to_s], start_at: '2020-01-01', end_at: '2020-02-01' })).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::DeltaAdvertisement)
    end
  end

  describe '#delta_pricings' do
    let(:params){ { category_versions: [1], start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:post, url: '/delta/pricings', response: { data: build(:delta_pricing) }) }
    subject(:record) { client.delta_pricings(params) }

    it 'requests the endpoint' do
      client.delta_pricings(params)

      expect(api_post('/delta/pricings').with(body: { category_versions: [1.to_s], start_at: '2020-01-01', end_at: '2020-02-01' })).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::DeltaPricing)
    end
  end

  describe '#delta_promotions' do
    let(:params){ { category_versions: [1], start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:post, url: '/delta/promotions', response: { data: build(:delta_promotion) }) }
    subject(:record) { client.delta_promotions(params) }

    it 'requests the endpoint' do
      client.delta_promotions(params)

      expect(api_post('/delta/promotions').with(body: { category_versions: [1.to_s], start_at: '2020-01-01', end_at: '2020-02-01' })).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::DeltaPromotion)
    end
  end
end
