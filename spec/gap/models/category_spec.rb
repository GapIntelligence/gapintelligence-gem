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
  end
end
