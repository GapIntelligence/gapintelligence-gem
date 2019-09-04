require 'spec_helper'

describe GapIntelligence::AdPages do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#ad_page' do
    let(:ad_page) { build(:ad_page) }
    let(:ad_image) { build(:ad_image, ad_page: ad_page) }

    before { stub_api_request(:get, response: { data: ad_image }) }
    subject(:record) { client.ad_page(ad_page['public_id']) }

    it 'requests the endpoint' do
      client.ad_page(ad_page['public_id'])
      expect(api_get(format('/ad_pages/%s', ad_page['public_id']))).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::AdImage)
    end
  end

  describe '#ad_pages' do
    before { stub_api_request(:get, response: { data: build_list(:ad_page, 2) }) }
    subject(:record_set) { client.ad_pages }

    it 'requests the endpoint' do
      client.ad_pages
      expect(api_get('/ad_pages')).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::AdPage)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(2)
    end
  end
end
