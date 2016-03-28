require 'spec_helper'

module GapIntelligence
  describe GapIntelligence::Client do
    it 'allows clients to be created' do
      expect(GapIntelligence::Client).to respond_to(:new)
    end

    context 'Configuring a Client' do
      let (:client) { Client.new }

      it 'Accepts a Client ID' do
        client.client_id = 'CLIENTID'
      end

      it 'Accepts a Client Secret' do
        client.client_secret = 'ASECRET'
      end

      it 'Will not make API calls without an id and a secret' do
        expect { client.connection }.to raise_error(ConfigurationError)
      end

      it 'Will not make API calls without an id' do
        client.client_secret = 'ASECRET'
        expect { client.connection }.to raise_error(ConfigurationError)
      end

      it 'Will not make API calls without a secret' do
        client.client_id = 'CLIENTID'
        expect { client.connection }.to raise_error(ConfigurationError)
      end
    end

    context 'Authenticating a client' do
      let (:client) { Client.new }

      it 'Will authenticate API calls if it provided with valid credentials' do
        client.client_id = 'CLIENTID'
        client.client_secret = 'ASECRET'

        stub_request(:post, 'http://CLIENTID:ASECRET@api.gapintelligence.com/oauth/token')
          .with(body: { 'grant_type' => 'client_credentials' },
                headers: { 'Accept' => '*/*', 'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type' => 'application/x-www-form-urlencoded', 'User-Agent' => 'Faraday v0.9.2' })
          .to_return(status: 200, body: '{"access_token":"ATOKEN","token_type":"bearer","expires_in":7200,"created_at":1459185716}', headers: { 'Content-Type' => 'application/json' })

        expect(client.connection)
      end

      it 'Will raise an error if its credentials are rejected' do
        client.client_id = 'CLIENTID'
        client.client_secret = 'A NOT OK SECRET'

        stub_request(:post, 'http://CLIENTID:A%20NOT%20OK%20SECRET@api.gapintelligence.com/oauth/token')
          .to_return(status: 400)

        expect { client.connection }.to raise_error(AuthenticationError)
      end

      it 'authenticates automatically when making an API request' do
        client.client_id = 'CLIENTID'
        client.client_secret = 'ASECRET'

        auth_stub = stub_request(:post, 'http://CLIENTID:ASECRET@api.gapintelligence.com/oauth/token')
                    .with(body: { 'grant_type' => 'client_credentials' })
                    .to_return(status: 200, body: '{"access_token":"ATOKEN","token_type":"bearer","expires_in":7200,"created_at":1459185716}', headers: { 'Content-Type' => 'application/json' })

        pricings_stub = stub_request(:get, 'http://api.gapintelligence.com/api/v1/pricings/')
                        .with(headers: { 'Authorization' => 'Bearer ATOKEN' })
                        .to_return(status: 200)

        client.pricings

        expect(auth_stub).to have_been_requested
        expect(pricings_stub).to have_been_requested
      end
    end
  end
end
