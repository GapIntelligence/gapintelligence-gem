FactoryGirl.define do
  factory :ad_page_advertisement, class: Hash do
    advertisement { build_list(:advertisement, 1) }
    ad_page { build_list(:ad_page, 1) }

    initialize_with do
      {
        'id' => 1,
        'type' => 'ad_page_advertisement',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
