module GapIntelligence
  class Brand < Record
    attribute :name

    def initialize(brand_name)
      @raw = brand_name
      @attributes = { 'name' => brand_name }
    end
  end
end
