require 'spec_helper'

describe GapIntelligence::Category do
  include_examples 'Record'

  describe 'attributes' do
    subject(:category) { described_class.new build(:category) }

    it 'has name' do
      expect(category).to respond_to(:name)
    end

    it 'has full_name' do
      expect(category).to respond_to(:full_name)
    end

    it 'has frequency' do
      expect(category).to respond_to(:frequency)
    end

    it "has published date" do
      expect(category.published_date).to be_an_instance_of(Date)
    end

    it 'has publish tag only' do
      expect(category).to respond_to(:publish_tag_only)
    end

    it 'has publish product location only' do
      expect(category).to respond_to(:publish_product_location)
    end

    it 'has country code' do
      expect(category).to respond_to(:country_code)
    end
  end
end
