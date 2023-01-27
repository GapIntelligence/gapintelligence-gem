require 'spec_helper'

describe GapIntelligence::DeltaPromotion do
  include_examples 'Record'
  include_examples 'DeltaRecord'

  describe 'attributes' do
    let!(:data) { build(:delta_promotion, start_date: '2017-04-24', end_date: '2017-04-24', promotion_type: 'instant_savings', promotion_event: 'event', shelf_price: '99.99', value: '30.0', promo_percentage: '0.3', bundle_type: 'bundle', on_ad: false, notes: 'Notes') }
    subject(:record) { described_class.new(data) }

    it 'has start_date' do
      expect(record.start_date).to eq(Date.parse('2017-04-24'))
    end

    it 'has end_date' do
      expect(record.end_date).to eq(Date.parse('2017-04-24'))
    end

    it 'has promotion_type' do
      expect(record.promotion_type).to eq('instant_savings')
    end

    it 'has promotion_event' do
      expect(record.promotion_event).to eq('event')
    end

    it 'has shelf_price' do
      expect(record.shelf_price).to eq('99.99')
    end

    it 'has value' do
      expect(record.value).to eq('30.0')
    end

    it 'has promo_percentage' do
      expect(record.promo_percentage).to eq('0.3')
    end

    it 'has bundle_type' do
      expect(record.bundle_type).to eq('bundle')
    end

    it 'has on_ad' do
      expect(record.on_ad).to eq(false)
    end

    it 'has notes' do
      expect(record.notes).to eq('Notes')
    end
  end
end
