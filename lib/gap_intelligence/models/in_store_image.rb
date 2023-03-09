module GapIntelligence
  class InStoreImage < Record
    attribute :id
    attribute :category_version_id
    attribute :merchant_id
    attributes :start_date, :end_date
    attribute :category_version_name
    attribute :merchant_name
    attribute :pricing_images

    def pricing_images
      @pricing_images ||= begin
        raw['pricing_images'].map do |pricing_image|
          GapIntelligence::PricingImage.new(pricing_image)
        end
      end
    end
  end
end
