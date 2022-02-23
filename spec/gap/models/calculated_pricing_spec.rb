require 'spec_helper'

describe GapIntelligence::CalculatedPricing do
  include_examples 'Record'

  describe 'attributes' do
    let!(:data) { build(:calculated_pricing, product_version_id: 1, merchant_id: 2, merchant_product_version_id: 3, date: '2020-01-01', shelf_price: 100, net_price: 70, promo_value: 30, promo_percentage: 30, on_ad: true, on_promo: false) }
    subject(:record) { described_class.new(data) }

    it 'has product version id' do
      expect(record.product_version_id).to eq(1)
    end

    it 'has merchant id' do
      expect(record.merchant_id).to eq(2)
    end

    it 'has merchant product version id' do
      expect(record.merchant_product_version_id).to eq(3)
    end

    it 'has date' do
      expect(record.date).to eq(Date.parse('2020-01-01'))
    end

    it 'has shelf price' do
      expect(record.shelf_price).to eq(100)
    end

    it 'has net price' do
      expect(record.net_price).to eq(70)
    end

    it 'has promo value' do
      expect(record.promo_value).to eq(30)
    end

    it 'has promo percentage' do
      expect(record.promo_percentage).to eq(30)
    end

    it 'has on ad' do
      expect(record.on_ad).to eq(true)
    end

    it 'has on promo' do
      expect(record.on_promo).to eq(false)
    end
  end
end
