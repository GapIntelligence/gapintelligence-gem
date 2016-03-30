require 'spec_helper'

describe Configuration do
  subject(:config) { GapIntelligence.config }

  describe 'client_id' do
    context 'by default' do
      it { expect(config.client_id).to be_nil }
    end

    context 'configured via config block' do
      before {
        GapIntelligence.configure {|c| c.client_id = 'CLIENT_ID' }
      }

      it { expect(config.client_id).to eq('CLIENT_ID') }
    end
  end

  describe 'client_secret' do
    context 'by default' do
      it { expect(config.client_secret).to be_nil }
    end

    context 'configured via config block' do
      before {
        GapIntelligence.configure {|c| c.client_secret = 'CLIENT_SECRET' }
      }

      it { expect(config.client_secret).to eq('CLIENT_SECRET') }
    end
  end
end
