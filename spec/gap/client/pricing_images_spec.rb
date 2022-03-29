require 'spec_helper'

describe GapIntelligence::AdPages do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#pricing_image' do
    let(:pricing_image) { build(:pricing_image) }
    let(:in_store_image) { build(:in_store_image, pricing_image: pricing_image) }

    before { stub_api_request(:get, response: { data: in_store_image }) }
    subject(:record) { client.pricing_image(pricing_image['public_id']) }

    it 'requests the endpoint' do
      client.pricing_image(pricing_image['public_id'])
      expect(api_get(format('/pricing_images/%s', pricing_image['public_id']))).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::InStoreImage)
    end
  end
end
