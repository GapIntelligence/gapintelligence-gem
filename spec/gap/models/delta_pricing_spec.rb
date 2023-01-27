require 'spec_helper'

describe GapIntelligence::DeltaPricing do
  include_examples 'Record'
  include_examples 'DeltaRecord'

  describe 'attributes' do
    let!(:data) { build(:delta_pricing, date: '2017-04-24', shelf_price: '99.99', net_price: '69.99', promo_value: '30.0', promo_percentage: '0.3', on_ad: false, on_promo: false, in_stock: true, product_location: 'drawer', merchant_debut_date: '2017-04-24', age_of_placements_wks: 0) }
    subject(:record) { described_class.new(data) }

    it 'has date' do
      expect(record.date).to eq(Date.parse('2017-04-24'))
    end

    it 'has shelf_price' do
      expect(record.shelf_price).to eq('99.99')
    end

    it 'has net_price' do
      expect(record.net_price).to eq('69.99')
    end

    it 'has promo_value' do
      expect(record.promo_value).to eq('30.0')
    end

    it 'has promo_percentage' do
      expect(record.promo_percentage).to eq('0.3')
    end

    it 'has on_ad' do
      expect(record.on_ad).to eq(false)
    end

    it 'has on_promo' do
      expect(record.on_promo).to eq(false)
    end

    it 'has in_stock' do
      expect(record.in_stock).to eq(true)
    end

    it 'has product_location' do
      expect(record.product_location).to eq('drawer')
    end

    it 'has merchant_debut_date' do
      expect(record.merchant_debut_date).to eq('2017-04-24')
    end

    it 'has age_of_placements_wks' do
      expect(record.age_of_placements_wks).to eq(0)
    end
  end
end
