require 'spec_helper'

describe GapIntelligence::Pricing do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#pricings' do
    let!(:pricings) { build_list(:pricing, 3) }
    before { stub_api_request(:get, response: { data: pricings }) }
    subject { client.pricings }

    it 'requests the endpoint' do
      client.category_versions
      expect(api_get('/pricings')).to have_been_made
    end

    it 'returns record set' do
      expect(subject).to be_instance_of(GapIntelligence::Pricing)
    end

    it 'returns set of specified type' do
      expect(subject).to all be_an(GapIntelligence::Pricing)
    end

    it 'contains proper count of elements' do
      expect(pricings).to eq(3)
    end
  end
end
