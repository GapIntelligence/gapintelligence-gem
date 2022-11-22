module GapIntelligence
  class DeltaAdvertisement < Record
    attributes :merchant_id, :category_id, :category_version_id,
               :brand_id, :product_id, :product_version_id

    attributes :category_name, :country_code, :category_version_name
    attributes :merchant_name, :merchant_channel
    attributes :brand_name, :part_number, :product_version_name
    attributes :product_status, :specifications

    attributes :ad_name, :details
    attributes :ad_date, :end_date
    attributes :advertisement_type, :promotion_type
    attributes :ad_location
    attributes :print_verified, :online_verified
    attributes :shelf_price, :advertised_price, :bundle_type

    attributes :instant_savings, :mail_in_rebate,
               :price_drop, :bundle, :peripheral, :free_gift,
               :merchant_gift_card, :merchant_rewards, :recycling,
               :miscellaneous, :total_value

    attributes :page_number, :image_number, :gap_url
  end
end
