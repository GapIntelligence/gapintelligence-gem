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
                  :connection_build

    def initialize
      @host = 'api.gapintelligence.com'
      @port = 443
      @use_ssl = true
    end
  end
end
