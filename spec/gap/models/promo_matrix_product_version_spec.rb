require 'spec_helper'

describe GapIntelligence::PromoMatrixProductVersion do
  include_examples 'Record'
  it { expect(described_class).to be < MerchantProductVersion }
end
