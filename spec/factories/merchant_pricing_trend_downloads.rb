FactoryGirl.define do
  factory :merchant_pricing_trend_download, class: Hash do
    categories [24]
    countries ['US']
    start_at '2015-11-24'
    end_at '2016-02-23'

    merchants ['Walgreens']
    brands ['HP']

    on_ad true
    on_promo false

    display_shelf true
    display_net true
    min_price 0
    max_price 1_000_000.99

    specs { {} }

    custom_file_name ''
    status 'done'

    created_at { Time.now.to_s }

    initialize_with {
      {
        'id' => 2480,
        'type' => 'merchant_pricing_trend_downloads',
        'attributes' => attributes.stringify_keys
      }
    }
  end
end
