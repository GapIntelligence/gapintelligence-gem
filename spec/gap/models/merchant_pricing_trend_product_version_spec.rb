require 'spec_helper'

describe GapIntelligence::MerchantPricingTrendProductVersion do
  include_examples 'Record'
  it { expect(described_class).to be < MerchantProductVersion }
end
