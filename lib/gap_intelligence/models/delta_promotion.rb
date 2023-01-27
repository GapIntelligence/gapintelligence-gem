module GapIntelligence
  class DeltaPromotion < Record
    attributes :merchant_id, :category_id, :category_version_id,
               :brand_id, :product_id, :product_version_id

    attributes :category_name, :country_code, :category_version_name
    attributes :merchant_name, :merchant_channel
    attributes :brand_name, :part_number, :product_version_name
    attributes :product_status, :specifications

    attributes :start_date, :end_date, class: Date
    attributes :promotion_type, :promotion_event
    attributes :shelf_price, :value, :promo_percentage
    attributes :bundle_type, :on_ad, :notes
  end
end
