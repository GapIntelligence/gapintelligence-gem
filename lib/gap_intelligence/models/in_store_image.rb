module GapIntelligence
  class InStoreImage < Record
    attributes :name, :merchant_name
    attributes :start_date, :end_date, class: Date
    attribute :pricing_images, :pricing_image
  end
end
