FactoryGirl.define do
  factory :file, class: Hash do
    initialize_with {
      {
        'id' => '1',
        'url' => 'http://gap-test.com/file.zip'
      }
    }
  end
end
