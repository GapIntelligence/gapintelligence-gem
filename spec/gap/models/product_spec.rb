require 'spec_helper'

describe GapIntelligence::Product do
  include_examples 'Record'

  describe 'attributes' do
    subject(:product) { described_class.new build(:product) }

     it 'has name' do
      expect(product).to respond_to(:name)
    end

    it 'has part_number' do
      expect(product).to respond_to(:part_number)
    end

    it 'has product_status' do
      expect(product).to respond_to(:product_status)
    end

    it 'has manufacturer_suggested_retail_price' do
      expect(product).to respond_to(:manufacturer_suggested_retail_price)
    end

    it 'has estimated_retail_price' do
      expect(product).to respond_to(:estimated_retail_price)
    end

    it 'has net_estimated_price' do
      expect(product).to respond_to(:net_estimated_price)
    end

    it 'has average_online_price' do
      expect(product).to respond_to(:average_online_price)
    end

    it 'has average_retail_dot_com_net_price' do
      expect(product).to respond_to(:average_retail_dot_com_net_price)
    end

    it 'has average_retail_dot_com_weekly_net_price' do
      expect(product).to respond_to(:average_retail_dot_com_weekly_net_price)
    end

    it 'has average_retail_net_price' do
      expect(product).to respond_to(:average_retail_net_price)
    end

    it 'has average_retail_weekly_net_price' do
      expect(product).to respond_to(:average_retail_weekly_net_price)
    end

    it 'has average_ecom_net_price' do
      expect(product).to respond_to(:average_ecom_net_price)
    end

    it 'has average_ecom_weekly_net_price' do
      expect(product).to respond_to(:average_ecom_weekly_net_price)
    end

    it 'has most_frequent_price' do
      expect(product).to respond_to(:most_frequent_price)
    end

    it 'has most_frequent_weekly_price' do
      expect(product).to respond_to(:most_frequent_weekly_price)
    end

    it 'has most_frequent_monthly_price' do
      expect(product).to respond_to(:most_frequent_monthly_price)
    end

    it 'has most_frequent_retail_weekly_price' do
      expect(product).to respond_to(:most_frequent_retail_weekly_price)
    end

    it 'has most_frequent_retail_net_price' do
      expect(product).to respond_to(:most_frequent_retail_net_price)
    end

    it 'has brand_name' do
      expect(product).to respond_to(:brand_name)
    end

    it 'has category_name' do
      expect(product).to respond_to(:category_name)
    end
  end
end
