require 'spec_helper'

RSpec.shared_examples_for 'DeltaRecord' do
  let(:data) { { 'merchant_id' => 1, 'category_id' => 1, 'category_version_id' => 1, 'brand_id' => 1, 'product_id' => 1, 'product_version_id' => 1, 'category_name' => 'Category', 'country_code' => 'CODE', 'category_version_name' => 'Category (CODE)', 'merchant_name' => 'Merchant', 'merchant_channel' => 'ECom', 'brand_name' => 'Brand', 'part_number' => 'PN1', 'product_version_name' => 'Product 1', 'product_status' => 'Current', 'specifications' => {} } }
  subject(:record) { described_class.new('attributes' => data) }

  it 'has merchant_id' do
    expect(record.merchant_id).to eq(1)
  end

  it 'has category_id' do
    expect(record.category_id).to eq(1)
  end

  it 'has category_version_id' do
    expect(record.category_version_id).to eq(1)
  end

  it 'has brand_id' do
    expect(record.brand_id).to eq(1)
  end

  it 'has product_id' do
    expect(record.product_id).to eq(1)
  end

  it 'has product_version_id' do
    expect(record.product_version_id).to eq(1)
  end

  it 'has category_name' do
    expect(record.category_name).to eq('Category')
  end

  it 'has country_code' do
    expect(record.country_code).to eq('CODE')
  end

  it 'has category_version_name' do
    expect(record.category_version_name).to eq('Category (CODE)')
  end

  it 'has merchant_name' do
    expect(record.merchant_name).to eq('Merchant')
  end

  it 'has merchant_channel' do
    expect(record.merchant_channel).to eq('ECom')
  end

  it 'has brand_name' do
    expect(record.brand_name).to eq('Brand')
  end

  it 'has part_number' do
    expect(record.part_number).to eq('PN1')
  end

  it 'has product_version_name' do
    expect(record.product_version_name).to eq('Product 1')
  end

  it 'has product_status' do
    expect(record.product_status).to eq('Current')
  end

  it 'has specifications' do
    expect(record.specifications).to eq({})
  end
end
