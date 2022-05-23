module GapIntelligence
  class CalculatedPricing < Record
    attributes :product_version_id, :merchant_id, :merchant_product_version_id
    attribute :date, class: Date
    attributes :shelf_price, :net_price
    attributes :promo_value, :promo_percentage
    attributes :on_ad, :on_promo
    attributes :in_stock, :previous_shelf_price, :previous_net_price
  end
end
