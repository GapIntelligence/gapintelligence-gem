module GapIntelligence
  class Pricing < Record
    attribute :published_date, class: Date
    attribute :net_price
    attribute :shelf_price
    attribute :in_stock
    attribute :tag_only
    attribute :brand
    attribute :category_name
    attribute :merchant
    attribute :merchant_sku
    attribute :product
    attribute :part_number
    attribute :deleted
  end
end
