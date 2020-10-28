FactoryGirl.define do
  factory :category_version, class: Hash do
    initialize_with {
      {
        "id" => 1,
        "type" => "categories",
        "attributes" => { 'name' => 'A Category',
                          'full_name' => 'A Category Full Name',
                          'display_name' => 'A display name',
                          'category_id' => 1,
                          'frequency' => 'weekly',
                          'published_date' => '2000-01-01',
                          'country_code' => 'US' }
      }
    }
  end
end
