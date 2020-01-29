module GapIntelligence
  def self.configure(&block)
    yield config
    config
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.reset_config!
    @config = nil
    config
  end

  class Configuration
    attr_accessor :client_id,
                  :client_secret,
                  :host,
                  :port,
                  :use_ssl,
                  :connection_build,
                  :connection_opts,
                  :raise_errors

    def initialize
      @host = 'localhost'
      @port = 4000
      @use_ssl = false
      @connection_opts = { request: { timeout: 50000 } }
      @raise_errors = false
    end
  end
end
