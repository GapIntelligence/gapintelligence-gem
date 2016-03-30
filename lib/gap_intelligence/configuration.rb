module GapIntelligence
  def self.configure(&block)
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.reset_config!
    @config = nil
    config
  end

  class Configuration
    attr_accessor :client_id, :client_secret
  end
end
