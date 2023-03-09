require 'spec_helper'

describe GapIntelligence::InStoreImages do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#in_store_images' do
    before { stub_api_request(:get, response: { data: build_list(:in_store_image, 3) }) }
    subject(:record_set) { client.in_store_images }

    it 'requests the endpoint' do
      client.in_store_images
      expect(api_get('/in_store_images')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::InStoreImage)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end
end
