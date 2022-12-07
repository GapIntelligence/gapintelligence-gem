require 'spec_helper'

describe GapIntelligence::DeltaAdvertisement do
  include_examples 'Record'
  include_examples 'DeltaRecord'

  describe 'attributes' do
    let!(:data) { build(:delta_advertisement, ad_name: 'Online Banner Ad', details: 'Now available', ad_date: '2017-04-24', end_date: '2017-04-24', advertisement_type: 'retail_circular', promotion_type: 'ad_only', ad_location: 'Home Left', print_verified: 'N', online_verified: true, shelf_price: nil, advertised_price: '10', bundle_type: 'na', instant_savings: '9', mail_in_rebate: '8', price_drop: '7', bundle: '6', peripheral: '5', free_gift: '4', merchant_gift_card: '3', merchant_rewards: '2', recycling: '2', miscellaneous:'0', total_value: '15', page_number: '1', image_number: '2', gap_url: 'url') }
    subject(:record) { described_class.new(data) }

    it 'has ad_name' do
      expect(record.ad_name).to eq('Online Banner Ad')
    end

    it 'has details' do
      expect(record.details).to eq('Now available')
    end

    it 'has ad_date' do
      expect(record.ad_date).to eq(Date.parse('2017-04-24'))
    end

    it 'has end_date' do
      expect(record.end_date).to eq(Date.parse('2017-04-24'))
    end

    it 'has advertisement_type' do
      expect(record.advertisement_type).to eq('retail_circular')
    end

    it 'has promotion_type' do
      expect(record.promotion_type).to eq('ad_only')
    end

    it 'has ad_location' do
      expect(record.ad_location).to eq('Home Left')
    end

    it 'has print_verified' do
      expect(record.print_verified).to eq('N')
    end

    it 'has online_verified' do
      expect(record.online_verified).to eq(true)
    end

    it 'has shelf_price' do
      expect(record.shelf_price).to eq(nil)
    end

    it 'has advertised_price' do
      expect(record.advertised_price).to eq('10')
    end

    it 'has bundle_type' do
      expect(record.bundle_type).to eq('na')
    end

    it 'has instant_savings' do
      expect(record.instant_savings).to eq('9')
    end

    it 'has mail_in_rebate' do
      expect(record.mail_in_rebate).to eq('8')
    end

    it 'has price_drop' do
      expect(record.price_drop).to eq('7')
    end

    it 'has bundle' do
      expect(record.bundle).to eq('6')
    end

    it 'has peripheral' do
      expect(record.peripheral).to eq('5')
    end

    it 'has free_gift' do
      expect(record.free_gift).to eq('4')
    end

    it 'has merchant_gift_card' do
      expect(record.merchant_gift_card).to eq('3')
    end

    it 'has merchant_rewards' do
      expect(record.merchant_rewards).to eq('2')
    end

    it 'has recycling' do
      expect(record.recycling).to eq('2')
    end

    it 'has miscellaneous' do
      expect(record.miscellaneous).to eq('0')
    end

    it 'has total_value' do
      expect(record.total_value).to eq('15')
    end

    it 'has page_number' do
      expect(record.page_number).to eq('1')
    end

    it 'has image_number' do
      expect(record.image_number).to eq('2')
    end

    it 'has gap_url' do
      expect(record.gap_url).to eq('url')
    end
  end
end
