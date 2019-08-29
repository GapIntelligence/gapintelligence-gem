require 'spec_helper'

describe GapIntelligence::AdPageAdvertisement do
  include_examples 'Record'

  let!(:ad_page_advertisement_attributes) do
    %i[
      ad_date
      end_date
      category
      merchant
      brand
      product_status_when_advertised
      product_part_number
      merchant_sku
      shelf_price_when_advertised
      advertised_price
      advertisement_type
      promotion_type
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
      total_value
      details
      ad_location
      ad_name
      image_number
      region
      print_verified
      online_verified
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
