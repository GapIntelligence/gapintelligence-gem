require 'spec_helper'

describe GapIntelligence::Headers do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#advertisement_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :ads) }) }
    subject(:record_set) { client.advertisement_headers }

    it 'requests the endpoint' do
      client.advertisement_headers
      expect(api_get('/headers/advertisements')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#promotion_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :promos) }) }
    subject(:record_set) { client.promotion_headers }

    it 'requests the endpoint' do
      client.promotion_headers
      expect(api_get('/headers/promotions')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#pricing_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :pricings) }) }
    subject(:record_set) { client.pricing_headers }

    it 'requests the endpoint' do
      client.pricing_headers
      expect(api_get('/headers/pricings')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#average_contract_pricing_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :average_contract_pricings) }) }
    subject(:record_set) { client.average_contract_pricings_headers }

    it 'requests the endpoint' do
      client.average_contract_pricings_headers
      expect(api_get('/headers/average_contract_pricings')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#dealer_cost_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :dealer_costs) }) }
    subject(:record_set) { client.dealer_costs_headers }

    it 'requests the endpoint' do
      client.dealer_costs_headers
      expect(api_get('/headers/dealer_costs')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#specification_headers' do
    before { stub_api_request(:get, response: { data: build_list(:header, 3, :specifications) }) }
    subject(:record_set) { client.specification_headers }

    it 'requests the endpoint' do
      client.specification_headers
      expect(api_get('/headers/specifications')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Header)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

end
