require 'spec_helper'

describe GapIntelligence::Merchants do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#merchants' do
    before { stub_api_request(:get, response: { data: build_list(:merchant, 3) }) }
    subject(:record_set) { client.merchants }

    it 'requests the endpoint' do
      client.merchants
      expect(api_get('/merchants')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Merchant)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end
end
