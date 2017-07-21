require 'spec_helper'

describe GapIntelligence::Promotion do
  include_examples 'Record'

  let!(:attributes_list) {
    [
              :start_date,
         :end_date,
         :promotion_type,
         :value,
         :bundle_type,
         :merchant_sku,
         :notes
         :category_name
 :brand
 :part_number
 :product_name
  :merchant
  :deleted
    ]
  }

  describe 'attributes' do
    subject(:promotion) { described_class.new build(:promotion) }

      it 'has correct attributes' do
        expect(category).to include(attributes_list)
      end
  end
end
