FactoryGirl.define do
  factory :ad_share, class: Hash do
    initialize_with {
      {
        "values" => [
          {
            "category_id": 1,
            "merchant_id": 1,
            "brand_id": 1,
            "start_date": "2017-01-01",
            "end_date": "2017-01-07",
            "promotion_type": "retail_circular",
            "incentive_type": "Instant Savings",
            "Core Spec 1": "1"
          }
        ],
        "variants": {
          "merchants": [
            {
                "id": 1,
                "name": "Merchant",
                "channel": 1
            }
          ],
          "brands": [
            {
                "id": 1,
                "name": "Brand"
            }
          ],
          "specs": {
            "Core Spec 1": [
                '1'
            ]
          }
        }
      }
    }
  end
end
