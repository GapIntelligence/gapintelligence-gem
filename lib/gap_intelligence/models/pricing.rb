module GapIntelligence
  class Pricing < Record  
    attribute :id
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
  end
end
