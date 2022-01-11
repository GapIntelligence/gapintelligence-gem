require 'spec_helper'

describe GapIntelligence::Brands do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#brands' do
    before { stub_api_request(:get, response: { data: build_list(:brand, 3) }) }
    subject(:record_set) { client.brands }

    it 'requests the endpoint' do
      client.brands
      expect(api_get('/brands')).to have_been_made
    end

    it 'requests the endpoint with params' do
      client.brands(category_name: 'hp')
      expect(api_get('/brands?category_name=hp')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Brand)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#printer_brands' do
    before { stub_api_request(:get, response: { data: build_list(:brand, 2) }) }
    subject(:record_set) { client.printer_brands }

    it 'requests the endpoint' do
      client.printer_brands
      expect(api_get('/brands/printer_brands')).to have_been_made
    end

    it 'requests the endpoint with params' do
      client.printer_brands(category_version_id: 1)
      expect(api_get('/brands/printer_brands?category_version_id=1')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Brand)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(2)
    end
  end
end
