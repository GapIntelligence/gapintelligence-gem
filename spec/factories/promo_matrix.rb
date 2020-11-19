FactoryGirl.define do
  factory :promo_matrix_product_version, class: Hash do
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

  factory :promo_matrix_pricing, class: Hash do
    product_version_id 1
    merchant_id 1
    date '2020-01-01'
    shelf_price 10.0
    net_price 7.0
    promo_value 3.0
    promo_percentage 30
    on_ad true
    on_promo false

    initialize_with do
      { 'id' => 1, 'type' => 'pricings' }.merge(attributes.stringify_keys)
    end
  end
end
