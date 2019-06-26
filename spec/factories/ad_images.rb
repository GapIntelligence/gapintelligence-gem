FactoryGirl.define do
  factory :ad_image, class: Hash do
    merchant_name 'OfficeDepot.com'
    ad_type 'banner_ad'
    start_date '2019-01-14'
    end_date '2019-01-15'
    ad_pages { build_list(:ad_page, 1) }

    initialize_with do
      {
        'id' => 1,
        'type' => 'ad_images',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
