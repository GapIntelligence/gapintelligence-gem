FactoryGirl.define do
  factory :country, class: Hash do
    initialize_with {
      {
        'id' => '1',
        'code' => 'US',
        'currency' => '$',
        'region_id' => 'US',
        'name' => 'United States'
      }
    }
  end
end
