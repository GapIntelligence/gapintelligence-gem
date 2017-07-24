require 'spec_helper'

describe GapIntelligence::Promotion do
  include_examples 'Record'

  let!(:promotion_attributes) do
    %i[
      start_date
      end_date
      promotion_type
      value
      bundle_type
      merchant_sku
      notes
      category_name
      brand
      part_number
      product_name
      merchant
      deleted
    ]
  end

  describe 'attributes' do
    subject(:promotion) { described_class.new build(:promotion) }

    it 'has correct attributes' do
      expect(subject).to respond_to(*promotion_attributes)
    end
  end
end
