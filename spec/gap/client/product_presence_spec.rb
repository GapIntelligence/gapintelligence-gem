require 'spec_helper'

describe GapIntelligence::ProductPresence do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#product_presence' do
    let(:params) { { categories: [20], channel: 'Retail', start_at: '2017-01-01', end_at: '2017-02-02' } }
    before { stub_api_request(:get, response: { data: { values: [{ brand_presence: {} }, merchant_presence: {}] } }) }
    subject(:record) { client.product_presence(params) }

    it 'requests the endpoint' do
      client.product_presence(params)
      expect(api_get('/product_presence').with(query: params)).to have_been_made
    end

    it 'returns ProductPresence instance' do
      expect(record).to be_instance_of(GapIntelligence::Record)
    end
  end
end
