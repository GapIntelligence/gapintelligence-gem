FactoryGirl.define do
  factory :ad_page, class: Hash do
    position 1
    public_id 'a6034ce3f3d9cbd8323'
    image_url 'https://image.url/image.png'
    image_thumb_url 'https://image.url/thumb_image.png'

    initialize_with do
      { 'id' => 1, 'type' => 'ad_pages' }.merge(attributes.stringify_keys)
    end
  end
end
