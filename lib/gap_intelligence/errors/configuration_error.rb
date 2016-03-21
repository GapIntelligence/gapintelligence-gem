# Error class for issues with the configuration of the gap client.
module GapIntelligence
  class ConfigurationError < StandardError
    def initialize(msg = 'Please provide a client_id and client_secret before making requests.')
      super
    end
  end
end
