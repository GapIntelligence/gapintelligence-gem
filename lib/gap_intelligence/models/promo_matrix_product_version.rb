module GapIntelligence
  class PromoMatrixProductVersion < Record
    attributes :merchant_id, :merchant_name
    attributes :brand_id, :brand_name
    attributes :product_version_id, :part_number, :product_name
    attributes :image_url, :specifications
  end
end
