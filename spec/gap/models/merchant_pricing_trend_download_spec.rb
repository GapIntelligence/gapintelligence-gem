require 'spec_helper'

describe GapIntelligence::MerchantPricingTrendDownload do
  include_examples 'Record'

  describe 'attributes' do
    subject(:download) { described_class.new build(:merchant_pricing_trend_download) }

    it 'has category versions as Array' do
      expect(download.category_versions).to be_an_instance_of(Array)
    end

    it 'has categories as Array' do
      expect(download.categories).to be_an_instance_of(Array)
    end

    it 'has countries as Array' do
      expect(download.countries).to be_an_instance_of(Array)
    end

    it 'has start_at as Date' do
      expect(download.start_at).to be_an_instance_of(Date)
    end

    it 'has end_at as Date' do
      expect(download.end_at).to be_an_instance_of(Date)
    end

    it 'has merchants as Array' do
      expect(download.merchants).to be_an_instance_of(Array)
    end

    it 'has brands as Array' do
      expect(download.brands).to be_an_instance_of(Array)
    end

    it 'has on_ad as Boolean' do
      expect(download.on_ad).to satisfy { |x| x == true || x == false }
    end

    it 'has on_promo as Boolean' do
      expect(download.on_promo).to satisfy { |x| x == true || x == false }
    end

    it 'has display_shelf as Boolean' do
      expect(download.display_shelf).to satisfy { |x| x == true || x == false }
    end

    it 'has display_net as Boolean' do
      expect(download.display_net).to satisfy { |x| x == true || x == false }
    end

    it 'responds to min_price' do
      expect(download).to respond_to(:min_price)
    end

    it 'responds to max_price' do
      expect(download).to respond_to(:max_price)
    end

    it 'responds to specs' do
      expect(download).to respond_to(:specs)
    end

    it 'has custom_file_name' do
      expect(download).to respond_to(:custom_file_name)
    end

    it 'has status' do
      expect(download).to respond_to(:status)
    end

    it 'has created_at as Time' do
      expect(download.created_at).to be_an_instance_of(Time)
    end
  end
end
