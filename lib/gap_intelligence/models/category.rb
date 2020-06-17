module GapIntelligence
  class Category < Record
    attribute :name
    attribute :full_name
    attribute :frequency
    attribute :published_date, class: Date
    attribute :publish_tag_only
    attribute :publish_product_location
  end
end
