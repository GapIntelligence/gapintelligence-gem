module GapIntelligence
  class PromoMatrixDownload < Record
    attributes :custom_file_name, :status
    attributes :owner_id
    attributes :category_version_id
    attributes :merchant_id
    attributes :start_at, :end_at, class: Date
    attributes :assortment_type
    attributes :brands
    attributes :product_versions, class: Array
    attributes :grid_value_type
    attributes :specifications
    attribute :created_at, class: Time
  end
end
