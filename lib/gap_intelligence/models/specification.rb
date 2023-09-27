module GapIntelligence
  class Specification < Record
    attribute :data
    attribute :part_number
    attribute :pvid
    attribute :country_code
    attribute :category_name
    attribute :uid
    attributes :deleted
  end
end
