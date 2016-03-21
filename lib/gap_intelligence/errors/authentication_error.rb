# Error class for issues related to authenticating to gAPI
module GapIntelligence
  class AuthenticationError < StandardError
    def initialize(msg = 'Unable to authenticate with the gAPI, please check your client_id and client_secret.')
      super
    end
  end
end
