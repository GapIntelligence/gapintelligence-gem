FactoryGirl.define do
  factory :in_store_image, class: Hash do
    merchant_name 'OfficeDepot.com'
    start_date '2022-03-29'
    end_date '2019-03-29'
    pricing_images { build_list(:pricing_image, 1) }

    initialize_with do
      {
        'id' => 1,
        'type' => 'in_store_images',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
