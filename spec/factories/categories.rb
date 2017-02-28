FactoryGirl.define do
  factory :category, class: Hash do
    initialize_with {
      {
        "id" => 1,
        "type" => "categories",
        "attributes" => { 'name' => 'A Category',
                          'full_name' => 'A Category Full Name',
                          'frequency' => 'weekly',
                          'published_date' => '2000-01-01' }
      }
    }
  end
end
