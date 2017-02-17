FactoryGirl.define do
  factory :category, class: Hash do
    initialize_with {
      {
        "id" => 1,
        "type" => "categories",
        "attributes" => { 'name' => 'A Category',
                          'full_name' => 'A Category Full Name',
                          'frequency' => 'weekly',
                          'this_weeks_published_day' => '2017-02-13' }
      }
    }
  end
end
