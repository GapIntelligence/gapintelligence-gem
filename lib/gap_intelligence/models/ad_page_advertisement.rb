module GapIntelligence
  class AdPageAdvertisement < Record
    attribute :ad_date, class: Date
    attribute :end_date, class: Date
    attributes :category
    attributes :merchant
    attributes :brand
    attributes :product_status_when_advertised
    attributes :product_part_number
    attributes :merchant_sku
    attributes :shelf_price_when_advertised
    attributes :advertised_price
    attributes :advertisement_type
    attributes :promotion_type
    attributes :bundle_type
    attributes :instant_savings
    attributes :mail_in_rebate
    attributes :price_drop
    attributes :bundle
    attributes :peripheral
    attributes :free_gift
    attributes :merchant_gift_card
    attributes :merchant_rewards
    attributes :recycling
    attributes :misc
    attributes :total_value
    attributes :details
    attributes :ad_location
    attributes :ad_name
    attributes :image_number
    attributes :region
    attributes :print_verified
    attributes :online_verified
  end
end
