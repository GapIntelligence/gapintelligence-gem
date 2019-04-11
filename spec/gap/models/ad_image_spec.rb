require 'spec_helper'

describe GapIntelligence::AdImage do
  include_examples 'Record'

  describe 'attributes' do
    subject(:ad_image) { described_class.new build(:ad_image) }

     it 'has name' do
      expect(ad_image).to respond_to(:name)
    end

    it 'has start_date' do
      expect(ad_image).to respond_to(:start_date)
    end

    it 'has end_date' do
      expect(ad_image).to respond_to(:end_date)
    end

    it 'has ad_type' do
      expect(ad_image).to respond_to(:ad_type)
    end

    it 'has ad_pages' do
      expect(ad_image).to respond_to(:ad_pages)
    end
  end
end
