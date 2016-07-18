require 'spec_helper'

describe GapIntelligence::MerchantPricingTrendDownloads do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#create_merchant_pricing_trend_download' do
    let(:owner_id) { 1 }
    let(:params){ { 'categories' => ['20'], 'countries' => ['US'], 'start_at' => '2015-03-01', 'end_at' => '2015-04-01' } }
    before { stub_api_request(:post, url: 'merchant_pricing_trend_downloads', response: { data: build(:merchant_pricing_trend_download) }) }
    subject(:result) { client.create_merchant_pricing_trend_download(owner_id, params) }

    it 'requests the endpoint' do
      client.create_merchant_pricing_trend_download(owner_id, params)

      expect(api_post('/merchant_pricing_trend_downloads').with(body: { owner_id: owner_id.to_s, merchant_pricing_trend_download: params })).to have_been_made
    end

    it 'creates a new download' do
      expect(result).to be_instance_of MerchantPricingTrendDownload
    end

    it 'returns error messages if parameters are not valid' do
      stub_api_request(:post, url: 'merchant_pricing_trend_downloads', response: { error: 'error message' }, status: 422)

      expect(result).to be_instance_of RequestError
      expect(result.message).to eq('error message')
    end
  end
end
