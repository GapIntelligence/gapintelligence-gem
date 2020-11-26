FactoryGirl.define do
  factory :notes_and_changes_record, class: Hash do
    initialize_with {
      {
        'values' => [
          {
            'id' => 1
          }
        ],
        'headers' => [
          {
            'id' => 1,
            'name' => 'Merchant'
          }
        ]
      }
    }
  end
end
