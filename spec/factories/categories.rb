FactoryGirl.define do
  factory :category, class: Hash do
    initialize_with {
      {
        "id" => 1,
        "type" => "categories",
        "attributes" => { 'name' => 'A Category'}
      }
    }
  end
end
