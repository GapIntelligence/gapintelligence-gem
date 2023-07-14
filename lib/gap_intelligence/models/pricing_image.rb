module GapIntelligence
  class PricingImage < Record
    attribute :in_store_image_id
    attribute :position
    attribute :public_id
    attributes :image_url, :image_thumb_url, :image_large_url
    attribute :download_url
    attribute :public_url
    attributes :created_at, :updated_at, class: Date

    def in_store_image
      @in_store_image ||= GapIntelligence::InStoreImage.new(raw['in_store_image'])
    end
  end
end
