module GapIntelligence
  class Header < Record
    attribute :name

    def initialize(attrs = {})
      header_name = attrs['attributes']['name']

      @raw = header_name
      @id = header_name
      @attributes = { 'name' => header_name }
    end
  end
end
