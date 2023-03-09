module GapIntelligence
  class PricingImage < Record
    attribute :id
    attribute :in_store_image_id
    attribute :position
    attribute :public_id
    attributes :image_url, :image_thumb_url, :image_large_url
    attribute :download_url
    attribute :public_url
  end
end
