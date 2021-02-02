FactoryGirl.define do
  factory :report_name, class: Hash do
    initialize_with {
      {
        'id' => 1,
        'name' => 'Weekly Online Status Report'
      }
    }
  end
end
