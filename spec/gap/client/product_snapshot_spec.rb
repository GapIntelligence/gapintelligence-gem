require 'spec_helper'

describe GapIntelligence::ProductSnapshot do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#product_snapshot' do
    let(:params) { { start_at: '2016-01-01', end_at: '2016-02-02' } }
    before { stub_api_request(:get, response: { data: build(:product_snapshot) }) }
    subject(:record) { client.product_snapshot(1, params) }

    it 'requests the endpoint' do
      client.product_snapshot(1, params)
      expect(api_get('/product_snapshots/1').with(query: params)).to have_been_made
    end

    it 'returns Record instance' do
      expect(record).to be_instance_of(GapIntelligence::Record)
    end
  end
end
