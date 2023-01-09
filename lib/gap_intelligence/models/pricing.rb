module GapIntelligence
  class Pricing < Record
    attribute :published_date
    attribute :net_price
    attribute :shelf_price
    attribute :in_stock
    attribute :brand
    attribute :category_name
    attribute :merchant
    attribute :merchant_sku
    attribute :product
    attribute :part_number
    attribute :product_location
    attribute :deleted
    attribute :date_collected
    attribute :promo_percentage
    attribute :on_promo
    attribute :on_ad
  end
end
