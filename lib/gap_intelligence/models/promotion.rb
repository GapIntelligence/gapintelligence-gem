module GapIntelligence
  class Promotion < Record
    attribute :start_date, class: Date
    attribute :end_date, class: Date
    attribute :promotion_type
    attribute :value
    attribute :bundle_type
    attribute :merchant_sku
    attribute :notes
    attribute :category_name
    attribute :brand
    attribute :part_number
    attribute :product_name
    attribute :merchant
    attribute :deleted
  end
end
