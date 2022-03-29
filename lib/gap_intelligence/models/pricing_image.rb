module GapIntelligence
  class PricingImage < Record
    attributes :in_store_image_id, :position, :download_url
    attributes :image_url, :image_thumb_url
    attributes :public_id, :public_url
  end
end
