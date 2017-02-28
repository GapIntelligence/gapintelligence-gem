module GapIntelligence
  class Category < Record
    attribute :name
    attribute :full_name
    attribute :frequency
    attribute :published_date, class: Date
  end
end
