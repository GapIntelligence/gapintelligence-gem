require 'spec_helper'

describe GapIntelligence::CategoryVersion do
  include_examples 'Record'

  describe 'attributes' do
    subject(:category_version) { described_class.new build(:category_version) }

    it 'has name' do
      expect(category_version).to respond_to(:name)
    end

    it 'has full_name' do
      expect(category_version).to respond_to(:full_name)
    end

    it 'has display_name' do
      expect(category_version).to respond_to(:display_name)
    end

    it 'has display_cents' do
      expect(category_version).to respond_to(:display_cents)
    end

    it 'has frequency' do
      expect(category_version).to respond_to(:frequency)
    end

    it "has published date" do
      expect(category_version.published_date).to be_an_instance_of(Date)
    end

    it 'has publish product location only' do
      expect(category_version).to respond_to(:publish_product_location)
    end

    it 'has country code' do
      expect(category_version).to respond_to(:country_code)
    end

    it 'has report types' do
      expect(category_version).to respond_to(:report_types)
    end
  end
end
