FactoryGirl.define do
  factory :delta_aggregation, class: Hash do
    x []
    y []
    values []

    initialize_with {
      {
        'x' => x,
        'y' => y,
        'values' => values
      }
    }
  end
end
