module StubsHelper
  API_HOST = 'api.gapintelligence.com'

  def stub_api_auth(client_id, client_secret, status = 200, options={})
    params = {
      client_id: client_id,
      client_secret: client_secret,
      grant_type: 'client_credentials'
    }
    params[:scope] = options[:scope] if options[:scope]
    stub_api_request(:post,
      url: 'oauth/token',
      params: params,
      response: {
        access_token: 'ATOKEN',
        token_type: 'bearer',
        expires_in: 7200,
        created_at: Time.now.to_i
      },
      status: status
    )
  end

  def stub_api_request(method, options)
    stub_request(method, build_uri(options[:url])).tap do |request|
      request = request.with(body: options[:params].stringify_keys) if options[:params]

      request.to_return(
        status: options[:status] || 200,
        body: options[:response].to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end

  def api_get(path)
    a_request(:get, build_uri(path))
  end

  def api_post(path)
    a_request(:post, build_uri(path))
  end

  def build_uri(path)
    path ? URI.join(format('http://%s', API_HOST), path) : /#{API_HOST}/
  end
end
