require 'spec_helper'

describe GapIntelligence::Advertisement do
  include_examples 'Record'

  let!(:attributes_list) {
    [
      :adate,
      :end_date,
      :promotion_type,
      :ad_location,
      :print_verified,
      :online_verified,
      :advertised_price,
      :bundle_type,
      :instant_savings,
      :mail_in_rebate,
      :price_drop,
      :bundle,
      :peripheral,
      :free_gift,
      :merchant_gift_card,
      :merchant_rewards,
      :recycling,
      :miscellaneous,
      :page_number,
      :merchant_sku,
      :ad_name,
      :details,
      :gap_url,
      :region,
      :total_value,
      :category_name,
      :brand,
      :part_number,
      :merchant,
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
