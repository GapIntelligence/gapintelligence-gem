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
end