require 'spec_helper'

describe GapIntelligence::NotesAndChanges do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#notes_and_changes' do
    let(:params) { { owner_id: 1, categories: [20], countries: ['Country 1'], start_at: '2016-01-01', end_at: '2016-02-02' } }
    before { stub_api_request(:get, response: { data: build(:notes_and_changes_record) }) }
    subject(:record) { client.notes_and_changes(params) }

    it 'requests the endpoint' do
      client.notes_and_changes(params)
      expect(api_get('/notes_and_changes').with(query: params)).to have_been_made
    end

    it 'returns NotesAndChangesRecord instance' do
      expect(record).to be_instance_of(GapIntelligence::NotesAndChangesRecord)
    end
  end
end
