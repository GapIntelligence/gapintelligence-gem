require 'spec_helper'

describe GapIntelligence::AdPageAdvertisement do
  include_examples 'Record'

  let!(:ad_page_advertisement_attributes) do
    %i[
      ad_date
      end_date
      promotion_type
      ad_location
      print_verified
      online_verified
      advertised_price
      bundle_type
      instant_savings
      mail_in_rebate
      price_drop
      bundle
      peripheral
      free_gift
      merchant_gift_card
      merchant_rewards
      recycling
      miscellaneous
      page_number
      merchant_sku
      ad_name
      details
      gap_url
      region
      total_value
      category_name
      brand
      part_number
      product_name
      merchant
      deleted
      advertisement_type
      print_page_number
      image_number
    ]
  end

  describe 'attributes' do
    subject { described_class.new build(:ad_page_advertisement) }

    it 'has correct attributes' do
      expect(subject).to respond_to(*ad_page_advertisement_attributes)
    end

    it "has ad_date as Date" do
      expect(subject.ad_date).to be_an_instance_of(Date)
    end

    it "has end_date as Date" do
      expect(subject.end_date).to be_an_instance_of(Date)
    end
  end
end
