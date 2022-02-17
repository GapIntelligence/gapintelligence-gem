require 'spec_helper'

describe GapIntelligence::MerchantPricingTrendPricing do
  include_examples 'Record'
  it { expect(described_class).to be < CalculatedPricing }
end
