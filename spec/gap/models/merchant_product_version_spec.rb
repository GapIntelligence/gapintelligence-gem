require 'spec_helper'

describe GapIntelligence::MerchantProductVersion do
  include_examples 'Record'

  describe 'attributes' do
    let!(:data) { build(:merchant_product_version, brand_id: 1, brand_name: 'Brand', part_number: 'Part Number', product_name: 'Product', product_version_id: 2, merchant_id: 3, merchant_name: 'Merchant', image_url: 'http://image.com/1.jpg', specifications: { 'Spec' => 'Value' }) }
    subject(:record) { described_class.new(data) }

    it 'has merchant id' do
      expect(record.merchant_id).to eq(3)
    end

    it 'has merchant name' do
      expect(record.merchant_name).to eq('Merchant')
    end

    it 'has brand id' do
      expect(record.brand_id).to eq(1)
    end

    it 'has brand name' do
      expect(record.brand_name).to eq('Brand')
    end

    it 'has product version id' do
      expect(record.product_version_id).to eq(2)
    end

    it 'has part number' do
      expect(record.part_number).to eq('Part Number')
    end

    it 'has product name' do
      expect(record.product_name).to eq('Product')
    end

    it 'has image url' do
      expect(record.image_url).to eq('http://image.com/1.jpg')
    end

    it 'has specifications' do
      expect(record.specifications).to eq('Spec' => 'Value')
    end
  end
end
