require 'spec_helper'

module GapIntelligence
  describe GapIntelligence do
    it 'has a version number' do
      expect(GapIntelligence::VERSION).not_to be nil
    end

    it 'allows clients to be created' do
      expect(GapIntelligence::Client).to respond_to(:new)
    end

    context "Configuring a Client" do
      let (:client) { Client.new }

      it "Accepts a Client ID" do
        client.client_id = "CLIENTID"
      end

      it "Accepts a Client Secret" do
        client.client_secret = "ASECRET"
      end

      it "Will not make API calls without an id and a secret" do
        expect {client.authenticate}.to raise_error(ConfigurationError)
      end

      it "Will not make API calls without an id" do
        client.client_secret = "ASECRET"
        expect {client.authenticate}.to raise_error(ConfigurationError)
      end

      it "Will not make API calls without a secret" do
        client.client_id = "CLIENTID"
        expect {client.authenticate}.to raise_error(ConfigurationError)
      end
    end

     context "Authenticating a client" do
       let (:client) {Client.new}

       it "Will authenticate API calls if it provided with valid credentials" do
         client.client_id = "CLIENTID"
         client.client_secret = "ASECRET"

         stub_request(:post, "http://api.gapintelligence.com/oauth/token").
           to_return(:status => 200, :body => '{"access_token": "ATOKEN"}', :headers => {"content-type" => 'text/json'})

         expect(client.authenticate).to eq "Bearer ATOKEN"
       end

       it "Will raise an error if its credentials are rejected" do
         client.client_id = "CLIENTID"
         client.client_secret = "A NOT OK SECRET"

         stub_request(:post, "http://api.gapintelligence.com/oauth/token").
           to_return(:status => 400)

         expect{client.authenticate}.to raise_error(AuthenticationError)
       end

       it "authenticates automatically when making an API request" do
         client.client_id = "CLIENTID"
         client.client_secret = "ASECRET"

         auth_stub = stub_request(:post, "http://api.gapintelligence.com/oauth/token").
           to_return(:status => 200, :body => '{"access_token": "ATOKEN"}', :headers => {"content-type" => 'text/json'})

         pricings_stub = stub_request(:get, "http://api.gapintelligence.com/api/v1/pricings/").
             with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization'=>'Bearer ATOKEN', 'User-Agent'=>'Faraday v0.9.2'}).
             to_return(:status => 200)

         client.pricings

         expect(auth_stub).to have_been_requested
         expect(pricings_stub).to have_been_requested
       end
     end
  end
end
