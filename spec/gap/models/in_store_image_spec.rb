require 'spec_helper'

describe GapIntelligence::InStoreImage do
  include_examples 'Record'

  describe 'attributes' do
    subject(:in_store_image) { described_class.new build(:in_store_image) }

    it 'has category version id' do
      expect(subject).to respond_to(:category_version_id)
    end

    it 'has merchant id' do
      expect(subject).to respond_to(:merchant_id)
    end

    it 'has start_date' do
      expect(subject).to respond_to(:start_date)
    end

    it 'has end_date' do
      expect(subject).to respond_to(:end_date)
    end

    it 'has category_version_name' do
      expect(subject).to respond_to(:category_version_name)
    end

    it 'has merchant_name' do
      expect(subject).to respond_to(:merchant_name)
    end

    it 'has pricing_images' do
      expect(subject).to respond_to(:pricing_images)
    end

    it 'has created_at' do
      expect(subject).to respond_to(:created_at)
    end

    it 'has updated_at' do
      expect(subject).to respond_to(:updated_at)
    end
  end
end
