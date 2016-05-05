FactoryGirl.define do
  factory :header, class: Hash do
    initialize_with {
      {
        'id' => '',
        'type' => 'advertisement_headers',
        'attributes' => { 'name' => 'A Header' }
      }
    }

    trait :ads do
      initialize_with {
        {
          'id' => '',
          'type' => 'advertisement_headers',
          'attributes' => { 'name' => 'A Header' }
        }
      }
    end

    trait :promos do
      initialize_with {
        {
          'id' => '',
          'type' => 'promotion_headers',
          'attributes' => { 'name' => 'A Header' }
        }
      }
    end
  end
end
