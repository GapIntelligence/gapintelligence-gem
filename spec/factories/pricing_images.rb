FactoryGirl.define do
  factory :pricing_image, class: Hash do
    position 1
    public_id 'c8a85f7347d5a9b41b5540a002a89c78e83410f5'
    image_url 'https://image.url/image.png'
    image_thumb_url 'https://image.url/thumb_image.png'

    initialize_with do
      { 'id' => 1, 'type' => 'pricing_images' }.merge(attributes.stringify_keys)
    end
  end
end
