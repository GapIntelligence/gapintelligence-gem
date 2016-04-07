require 'spec_helper'

describe GapIntelligence::Requestable do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#perform_request' do
    it 'requests path' do
      stub_api_request(:get, response: { data: { id: 1 } })
      client.perform_request(:get, 'path')

      expect(api_get('/path')).to have_been_made
    end

    it 'returns record set if data is a collection' do
      stub_api_request(:get, response: { data: [{ id: 1 }, { id: 2 }] })
      record_set = client.perform_request(:get, 'path')

      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns hash if data is a object' do
      stub_api_request(:get, response: { data: { id: 1 } })
      record_set = client.perform_request(:get, 'path')

      expect(record_set).to be_instance_of(Hash)
    end

    context 'with record class' do
      subject(:record_set) {
        client.perform_request(:get, 'path', record_class: GapIntelligence::Record)
      }

      it 'returns record set if data is a collection' do
        stub_api_request(:get, response: { data: [{ id: 1 }, { id: 2 }] })
        expect(record_set).to all be_an(GapIntelligence::Record)
      end

      it 'returns hash if data is a object' do
        stub_api_request(:get, response: { data: { id: 1 } })
        expect(record_set).to be_instance_of(GapIntelligence::Record)
      end
    end
  end
end
