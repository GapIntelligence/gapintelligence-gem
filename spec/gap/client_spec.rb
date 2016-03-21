require 'spec_helper'

module GapIntelligence
  describe GapIntelligence do
    it 'has a version number' do
      expect(GapIntelligence::VERSION).not_to be nil
    end

    it 'allows clients to be created' do
      expect(GapIntelligence::Client).to respond_to(:new)
    end

    context 'Configuring a Client' do
      let (:client) { Client.new }

      it 'Accepts a Client ID' do
        client.gapi_client_id = 'CLIENTID'
      end

      it 'Accepts a Client Secret' do
        client.gapi_client_secret = 'ASECRET'
      end

      it 'Will not make API calls without an id and a secret' do
        expect { client.authenticate }.to raise_error(ConfigurationError)
      end

      it 'Will not make API calls without an id' do
        client.gapi_client_secret = 'ASECRET'
        expect { client.authenticate }.to raise_error(ConfigurationError)
      end

      it 'Will not make API calls without a secret' do
        client.gapi_client_id = 'CLIENTID'
        expect { client.authenticate }.to raise_error(ConfigurationError)
      end
    end

    context 'Authenticating a client' do
      let (:client) { Client.new }

      it 'Will authenticate API calls if it provided with valid credentials' do
        client.gapi_client_id = 'CLIENTID'
        client.gapi_client_secret = 'ASECRET'

        stub_request(:post, 'http://api.gapintelligence.com/oauth/token')
          .with(:body => '{"client_id":"CLIENTID","client_secret":"ASECRET","grant_type":"client_credentials"}')
          .to_return(status: 200, body: '{"access_token": "ATOKEN"}')

        expect(client.authenticate).to eq 'Bearer ATOKEN'
      end

      it 'Will raise an error if its credentials are rejected' do
        client.gapi_client_id = 'CLIENTID'
        client.gapi_client_secret = 'A NOT OK SECRET'

        stub_request(:post, 'http://api.gapintelligence.com/oauth/token')
          .to_return(status: 400)

        expect { client.authenticate }.to raise_error(AuthenticationError)
      end

      it 'authenticates automatically when making an API request' do
        client.gapi_client_id = 'CLIENTID'
        client.gapi_client_secret = 'ASECRET'

        auth_stub = stub_request(:post, 'http://api.gapintelligence.com/oauth/token')
          .to_return(status: 200, body: '{"access_token": "ATOKEN"}')

        pricings_stub = stub_request(:get, 'http://api.gapintelligence.com/api/v1/pricings/')
          .with(headers: { 'Authorization' => 'Bearer ATOKEN'})
          .to_return(status: 200)

        client.pricings

        expect(auth_stub).to have_been_requested
        expect(pricings_stub).to have_been_requested
      end
    end
  end
end
