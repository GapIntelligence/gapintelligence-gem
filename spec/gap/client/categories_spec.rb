require 'spec_helper'

describe GapIntelligence::Categories do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#categories' do
    before { stub_api_request(:get, response: { data: build_list(:category, 3) }) }
    subject(:record_set) { client.categories }

    it 'requests the endpoint' do
      client.categories
      expect(api_get('/categories')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Category)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end
end
