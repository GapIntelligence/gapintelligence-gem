FactoryGirl.define do
  factory :brand, class: Hash do
    transient do
      sequence(:id)
      sequence(:name) { |n| "Brand #{n}" }
    end

    initialize_with {
      {
        'id' => id.to_s,
        'type' => 'brands',
        'attributes' => {
          'name' => name
        }
      }
    }
  end
end
