FactoryGirl.define do
  factory :in_store_image, class: Hash do
    transient do
      sequence(:id)
    end

    category_version_id 1
    merchant_id 1
    start_date '2023-01-14'
    end_date '2023-01-21'
    category_version_name 'TVs'
    merchant_name 'Amazon.com'
    pricing_images { build_list(:pricing_image, 3) }

    initialize_with do
      {
        'id' => id,
        'type' => 'in_store_images',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
