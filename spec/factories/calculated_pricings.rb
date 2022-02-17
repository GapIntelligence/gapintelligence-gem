FactoryGirl.define do
  factory :calculated_pricing, class: Hash do
    product_version_id 1
    merchant_id 1
    date '2022-01-01'
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
