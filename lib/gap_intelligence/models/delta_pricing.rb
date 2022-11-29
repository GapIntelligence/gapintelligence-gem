module GapIntelligence
  class DeltaPricing < Record
    attributes :merchant_id, :category_id, :category_version_id,
               :brand_id, :product_id, :product_version_id

    attributes :category_name, :country_code, :category_version_name
    attributes :merchant_name, :merchant_channel
    attributes :brand_name, :part_number, :product_version_name
    attributes :product_status, :product_location, :specifications

    attributes :date
    attributes :shelf_price, :net_price
    attributes :promo_value, :promo_percentage
    attributes :on_ad, :on_promo, :in_stock
    attributes :merchant_debut_date, :age_of_placements_wks
  end
end
