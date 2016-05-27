require 'spec_helper'

describe GapIntelligence::Files do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#files' do
    let(:params){ { owner_id: 1, file_id: 1, file_type: 'download' } }
    before { stub_api_request(:get, response: { data: build(:file) }) }
    subject(:result) { client.files(params) }

    it 'requests the endpoint' do
      client.files(params)
      expect(api_get('/files?owner_id=1&file_id=1&file_type=download')).to have_been_made
    end

    it 'returns a file' do
      expect(result).to be_instance_of GapIntelligence::File
    end
  end
end
