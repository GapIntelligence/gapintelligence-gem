require 'spec_helper'

describe Client do
  subject(:client) { described_class.new }

  it 'allows clients to be created' do
    expect(described_class).to respond_to(:new)
  end

  context 'Configuring a Client' do

    context 'with passing credentials' do
      it 'accepts a Client ID' do
        client.client_id = 'CLIENTID'
        expect(client.client_id).to eq('CLIENTID')
      end

      it 'accepts a Client Secret' do
        client.client_secret = 'ASECRET'
        expect(client.client_secret).to eq('ASECRET')
      end
    end

    context 'with shared config' do
      before {
        GapIntelligence.configure do |c|
          c.client_id = 'CLIENTID'
          c.client_secret = 'ASECRET'
        end
      }

      after { GapIntelligence.reset_config! }

      it 'uses shared config if credentials not provided' do
        expect(client.client_id).to eq('CLIENTID')
        expect(client.client_secret).to eq('ASECRET')
      end
    end
  end

  context 'Establishing connection' do
    it 'will not make API calls without an id and a secret' do
      expect { client.connection }.to raise_error(ConfigurationError)
    end

    it 'will not make API calls without an id' do
      client.client_secret = 'ASECRET'
      expect { client.connection }.to raise_error(ConfigurationError)
    end

    it 'will not make API calls without a secret' do
      client.client_id = 'CLIENTID'
      expect { client.connection }.to raise_error(ConfigurationError)
    end
  end

  context 'Authenticating a client' do
    it 'will authenticate API calls if it provided with valid credentials' do
      client.client_id = 'CLIENTID'
      client.client_secret = 'ASECRET'

      stub_request(:post, 'http://CLIENTID:ASECRET@api.gapintelligence.com/oauth/token')
        .with(body: { 'grant_type' => 'client_credentials' })
        .to_return(status: 200, body: '{"access_token":"ATOKEN","token_type":"bearer","expires_in":7200,"created_at":1459185716}', headers: { 'Content-Type' => 'application/json' })

      expect(client.connection)
    end

    it 'will raise an error if its credentials are rejected' do
      client.client_id = 'CLIENTID'
      client.client_secret = 'A NOT OK SECRET'

      stub_request(:post, 'http://CLIENTID:A%20NOT%20OK%20SECRET@api.gapintelligence.com/oauth/token')
        .to_return(status: 400)

      expect { client.connection }.to raise_error(AuthenticationError)
    end
  end
end
