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

    it 'returns nil if parameters are not valid' do
      stub_api_request(:post, url: 'merchant_pricing_trend_downloads', response: { error: 'error message' }, status: 422)

      expect(result).to be_nil
    end
  end

  describe '#merchant_pricing_trend_downloads' do
    let(:owner_id) { 1 }
    before { stub_api_request(:get, response: { data: build_list(:merchant_pricing_trend_download, 3) }) }
    subject(:record_set) { client.merchant_pricing_trend_downloads(owner_id) }

    it 'requests the endpoint' do
      client.merchant_pricing_trend_downloads(owner_id)
      expect(api_get(format('/merchant_pricing_trend_downloads?owner_id=%i', owner_id))).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::MerchantPricingTrendDownload)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#merchant_pricing_trend_download' do
    let(:owner_id) { 1 }
    let(:download) { build(:merchant_pricing_trend_download) }
    before { stub_api_request(:get, response: { data: download }) }
    subject(:record) { client.merchant_pricing_trend_download(owner_id, download['id']) }

    it 'requests the endpoint' do
      client.merchant_pricing_trend_download(owner_id, download['id'])
      expect(api_get(format('/merchant_pricing_trend_downloads/%i?owner_id=%i', download['id'], owner_id))).to have_been_made
    end

    it 'returns record' do
      expect(record).to be_instance_of(GapIntelligence::MerchantPricingTrendDownload)
    end
  end

  describe '#delete_merchant_pricing_trend_download' do
    let(:owner_id) { 1 }
    let(:download_ids) { ['1'] }
    before { stub_api_request(:delete, url: 'merchant_pricing_trend_downloads', response: { status: 'OK' }) }
    subject(:result) { client.delete_merchant_pricing_trend_download(owner_id, download_ids) }

    it 'requests the endpoint' do
      client.delete_merchant_pricing_trend_download(owner_id, download_ids)

      expect(api_delete('/merchant_pricing_trend_downloads').with(body: { owner_id: owner_id.to_s, ids: download_ids })).to have_been_made
    end

    it 'returns nothing' do
      expect(result).to eq(nil)
    end

    it 'returns nil if there is no such merchant pricing trend download.' do
      stub_api_request(:delete, url: 'merchant_pricing_trend_downloads', response: { error: 'error message' }, status: 404)

      expect(result).to be_nil
    end
  end
end
