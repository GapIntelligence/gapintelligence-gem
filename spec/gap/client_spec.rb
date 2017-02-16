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

    context 'configuring the base URI' do
      it 'accepts a host' do
        client.host = 'example.com'
        expect(client.host).to eq('example.com')
      end

      it 'accepts a port' do
        client.host = 3000
        expect(client.host).to eq(3000)
      end

      it 'reflects the port and host in the base URI' do
        client.host = 'localhost'
        client.port = 3000
        client.use_ssl = false
        expect(client.api_base_uri).to eq URI('http://localhost:3000')
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

      it 'defaults to the production gap api' do
        expect(client.host).to eq('api.gapintelligence.com')
      end

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
    subject(:client) { described_class.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

    it 'will authenticate API calls if it provided with valid credentials' do
      stub_api_auth('CLIENTID', 'ASECRET')
      expect(client.connection).to be_instance_of(OAuth2::AccessToken)
    end

    it 'will authenticate API calls if it provided with valid credentials and scope' do
      stub_api_auth('CLIENTID', 'ASECRET', 200, scope: 'ASCOPE')
      client = described_class.new(client_id: 'CLIENTID', client_secret: 'ASECRET', scope: 'ASCOPE')
      expect(client.connection).to be_instance_of(OAuth2::AccessToken)
    end

    it 'will raise an error if its credentials are rejected' do
      stub_api_auth('CLIENTID', 'ASECRET', 400)
      expect { client.connection }.to raise_error(AuthenticationError)
    end
  end
end
