module StubsHelper
  API_HOST = 'api.gapintelligence.com'

  def stub_api_auth(client_id, client_secret, status = 200, options = {})
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

  def api_get(path, options = {})
    build_request(:get, path, options)
  end

  def api_post(path, options = {})
    build_request(:post, path, options)
  end

  def api_delete(path, options = {})
    build_request(:delete, path, options)
  end

  def build_request(method, path, options = {})
    a_request(method, build_uri(path)).tap do |request|
      request.with(options) unless options.empty?
    end
  end

  def build_uri(path)
    path ? URI.join(format('https://%s', API_HOST), path) : /#{API_HOST}/
  end
end
