require 'spec_helper'

describe GapIntelligence::Specification do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#specifications' do
    let!(:specifications) { build_list(:specification, 3) }
    before { stub_api_request(:get, response: { data: specifications }) }
    subject { client.specifications }

    it 'requests the endpoint' do
      subject
      expect(api_get('/specifications')).to have_been_made
    end

    it 'contains proper count of elements' do
      expect(subject.count).to eq(3)
    end
  end
end
