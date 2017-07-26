require 'spec_helper'

describe GapIntelligence::Products do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#products' do
    before { stub_api_request(:get, response: { data: build_list(:product, 3) }) }
    subject(:record_set) { client.products }

    it 'requests the endpoint' do
      client.products
      expect(api_get('/products')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Product)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#product' do
    let(:product) { build(:product) }
    before { stub_api_request(:get, response: { data: product }) }
    subject(:record) { client.product(product['id']) }

    it 'requests the endpoint' do
      client.product(product['id'])
      expect(api_get(format('/products/%i', product['id']))).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::Product)
    end
  end
end
