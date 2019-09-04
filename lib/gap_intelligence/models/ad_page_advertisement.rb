module GapIntelligence
  class AdPageAdvertisement < Record
    attribute :ad_date, class: Date
    attribute :end_date, class: Date
    attribute :category
    attribute :merchant
    attribute :brand
    attribute :product_status_when_advertised
    attribute :product_part_number
    attribute :merchant_sku
    attribute :shelf_price_when_advertised
    attribute :advertised_price
    attribute :advertisement_type
    attribute :promotion_type
    attribute :bundle_type
    attribute :instant_savings
    attribute :mail_in_rebate
    attribute :price_drop
    attribute :bundle
    attribute :peripheral
    attribute :free_gift
    attribute :merchant_gift_card
    attribute :merchant_rewards
    attribute :recycling
    attribute :miscellaneous
    attribute :total_value
    attribute :details
    attribute :ad_location
    attribute :ad_name
    attribute :image_number
    attribute :region
    attribute :print_verified
    attribute :online_verified
    attribute :public_id
  end
end
