FactoryGirl.define do
  factory :brand, class: String do
    initialize_with {
      'A brand name'
    }
  end
end
