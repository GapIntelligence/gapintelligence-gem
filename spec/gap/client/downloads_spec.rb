require 'spec_helper'

describe GapIntelligence::Downloads do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#create_downloads' do
    let(:owner_id) { 1 }
    let(:params){ { filter: { categories: ['Category 1'], countries: ['Country 1'] } } }
    before { stub_api_request(:post, url: 'downloads', response: { data: build(:download) }) }
    subject(:result) { client.create_download(owner_id, params) }

    it 'requests the endpoint' do
      client.create_download(owner_id, params)

      expect(api_post('/downloads').with(body: { owner_id: owner_id.to_s, download: params })).to have_been_made
    end

    it 'creates a new download' do
      expect(result).to be_instance_of Download
    end

    it 'returns error messages if parameters are not valid' do
      stub_api_request(:post, url: 'downloads', response: { error: 'error message' }, status: 422)

      expect(result).to be_instance_of RequestError
      expect(result.message).to eq('error message')
    end
  end

  describe '#downloads' do
    let(:owner_id) { 1 }
    before { stub_api_request(:get, response: { data: build_list(:download, 3) }) }
    subject(:record_set) { client.downloads(owner_id) }

    it 'requests the endpoint' do
      client.downloads(owner_id)
      expect(api_get(format('/downloads?owner_id=%i', owner_id))).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::Download)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end
end
