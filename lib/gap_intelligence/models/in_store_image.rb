module GapIntelligence
  class InStoreImage < Record
    attribute :category_version_id
    attribute :merchant_id
    attribute :category_version_name
    attribute :merchant_name
    attributes :start_date, :end_date, :created_at, :updated_at, class: Date

    def pricing_images
      @pricing_images ||= begin
        raw['pricing_images'].map do |pricing_image_attributes|
          GapIntelligence::PricingImage.new(pricing_image_attributes)
        end
      end
    end
  end
end
