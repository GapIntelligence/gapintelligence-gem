FactoryGirl.define do
  factory :merchant_product_version, class: Hash do
    brand_id 1
    brand_name 'Brand 1'
    part_number 'Part Number 1'
    product_name 'Product 1'
    product_version_id 1
    merchant_id 1
    merchant_name 'Merchant 1'
    image_url nil
    specifications { { 'Spec 1' => 'Value 1' } }

    initialize_with do
      { 'id' => 1, 'type' => 'merchant_product_versions' }.merge(attributes.stringify_keys)
    end
  end
end
