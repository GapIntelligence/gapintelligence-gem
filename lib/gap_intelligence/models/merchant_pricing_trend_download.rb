module GapIntelligence
  class MerchantPricingTrendDownload < Record
    attribute :category_versions, class: Array
    attributes :categories, :countries, class: Array
    attributes :start_at, :end_at, class: Date
    attributes :merchants, :brands, class: Array
    attributes :on_ad, :on_promo
    attributes :display_shelf, :display_net
    attributes :min_price, :max_price
    attributes :specs
    attributes :custom_file_name, :status
    attribute :created_at, class: Time
  end
end
