FactoryGirl.define do
  factory :header, class: Hash do
    trait :ads do
      initialize_with {
        {
          'id' => '',
          'type' => 'advertisement_headers',
          'attributes' => { 'name' => 'A Header',
                            'unit' => nil,
                            'core_header' => nil,
                            'position' => nil }
        }
      }
    end

    trait :promos do
      initialize_with {
        {
          'id' => '',
          'type' => 'promotion_headers',
          'attributes' => { 'name' => 'A Header',
                            'unit' => nil,
                            'core_header' => nil,
                            'position' => nil }
        }
      }
    end

    trait :pricings do
      initialize_with {
        {
          'id' => '',
          'type' => 'pricing_headers',
          'attributes' => { 'name' => 'A Header',
                            'unit' => nil,
                            'core_header' => nil,
                            'position' => nil }
        }
      }
    end

    trait :specifications do
      initialize_with {
        {
          'id' => '',
          'type' => 'specification_headers',
          'attributes' => { 'name' => 'A Header',
                            'unit' => 'lbs',
                            'core_header' => false,
                            'position' => 0 }
        }
      }
    end
  end
end
