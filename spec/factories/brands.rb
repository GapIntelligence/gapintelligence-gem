FactoryGirl.define do
  factory :brand, class: GapIntelligence::Brand do
    initialize_with {
      'A brand name'
    }
  end
end
