require 'spec_helper'

describe GapIntelligence::AdShare do
  include_examples 'Record'

  let!(:ad_share_data) { build(:ad_share) }
  let!(:response_body) { { data: ad_share_data }.to_json }
  let!(:ad_share) { described_class.new response_body: response_body }

  describe 'attributes' do
    it 'has raw' do
      expect(ad_share).to respond_to(:raw)
    end

    it 'returns response_body in raw[:response_body]' do
      expect(ad_share.raw[:response_body]).to eq response_body
    end
  end
end
