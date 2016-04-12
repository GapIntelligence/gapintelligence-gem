FactoryGirl.define do
  factory :merchant, class: Hash do
    initialize_with {
      {
        "id" => '104',
        "type" => "merchants",
        "attributes" => {'name' => 'A Store',
                         'merchant_type' => 'A Type Of Merchant',
                         'channel' => 'A Channel',
                         'country_code' => 'US'}
      }
    }
  end
end
