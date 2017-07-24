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

    it "has start_date as Date" do
      expect(subject.start_date).to be_an_instance_of(Date)
    end

    it "has end_date as Date" do
      expect(subject.end_date).to be_an_instance_of(Date)
    end
  end
end
