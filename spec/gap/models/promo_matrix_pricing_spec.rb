require 'spec_helper'

describe GapIntelligence::PromoMatrixPricing do
  include_examples 'Record'
  it { expect(described_class).to be < CalculatedPricing }
end
