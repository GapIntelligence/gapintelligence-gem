require 'spec_helper'

describe GapIntelligence::Pricing do
  include_examples 'Record'

  describe 'attributes' do
    subject { described_class.new build(:pricing) }

     it 'has published_date' do
      expect(subject).to respond_to(:published_date)
    end

     it 'has net_price' do
      expect(subject).to respond_to(:net_price)
    end

     it 'has shelf_price' do
      expect(subject).to respond_to(:shelf_price)
    end

     it 'has in_stock' do
      expect(subject).to respond_to(:in_stock)
    end

     it 'has brand' do
      expect(subject).to respond_to(:brand)
    end

     it 'has category_name' do
      expect(subject).to respond_to(:category_name)
    end

     it 'has merchant' do
      expect(subject).to respond_to(:merchant)
    end

     it 'has merchant_sku' do
      expect(subject).to respond_to(:merchant_sku)
    end

     it 'has product' do
      expect(subject).to respond_to(:product)
    end

     it 'has part_number' do
      expect(subject).to respond_to(:part_number)
    end

     it 'has product_location' do
      expect(subject).to respond_to(:product_location)
    end

     it 'has date_collected' do
      expect(subject).to respond_to(:date_collected)
    end

     it 'has promo_percentage' do
      expect(subject).to respond_to(:promo_percentage)
    end

     it 'has on_ad' do
      expect(subject).to respond_to(:on_ad)
    end

     it 'has on_promo' do
      expect(subject).to respond_to(:on_promo)
    end
  end
end
