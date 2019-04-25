module GapIntelligence
  class AdImage < Record
    attributes :ad_type, :name, :merchant_name
    attributes :start_date, :end_date, class: Date
    attribute :ad_pages
  end
end
