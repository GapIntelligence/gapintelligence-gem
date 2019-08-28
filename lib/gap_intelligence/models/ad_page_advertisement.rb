module GapIntelligence
  class AdPageAdvertisement < Record
    attributes :id
    attributes :ad_date, class: Date
    attributes :end_date, class: Date
    attributes :promotion_type
    attributes :ad_location
    attributes :print_verified
    attributes :online_verified
    attributes :advertised_price
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
    attributes :miscellaneous
    attributes :page_number
    attributes :merchant_sku
    attributes :ad_name
    attributes :details
    attributes :gap_url
    attributes :region
    attributes :total_value
    attributes :category_name
    attributes :brand
    attributes :part_number
    attributes :product_name
    attributes :merchant
    attributes :deleted
    attributes :advertisement_type
    attributes :print_page_number
    attributes :image_number
  end
end
