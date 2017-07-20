require 'spec_helper'

describe GapIntelligence::AdShares do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#ad_shares' do
    let(:params) { { categories: [20], countries: ['Country 1'], start_at: '2016-01-01', end_at: '2016-02-02' } }
    before { stub_api_request(:get, response: { data: build(:ad_share) }) }
    subject(:record) { client.ad_shares(params) }

    it 'requests the endpoint' do
      client.ad_shares(params)
      expect(api_get('/ad_shares').with(query: params)).to have_been_made
    end

    it 'returns AdShare instance' do
      expect(record).to be_instance_of(GapIntelligence::AdShare)
    end
  end
end
