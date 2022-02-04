module GapIntelligence
  class CalculatedPricing < Record
    attributes :product_version_id, :merchant_id
    attribute :date, class: Date
    attributes :shelf_price, :net_price
    attributes :promo_value, :promo_percentage
    attributes :on_ad, :on_promo
  end
end
