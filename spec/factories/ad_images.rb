FactoryGirl.define do
  factory :ad_image, class: Hash do
    initialize_with {
      {
        'id' => '123',
        'type' => 'ad_images',
        'attributes' => {
          'name' => 'Online Banner Ad',
          'start_date' => '2019-04-01',
          'end_date' => '2019-04-02',
          'ad_type' => 'banner_ad',
          'merchant_name' => 'Costco',
          'ad_pages' => [
            {
              'id' => '456',
              'position' => 1,
              'image_url' => 'https://gapi-staging.s3.amazonaws.com/uploads/ad_page/image/83842/kitten_otis.JPG?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1587656777&Signature=oXVG5N6F0fPoGhCNKsAD77huzSI%3D',
              'image_thumb_url' => 'https://gapi-staging.s3.amazonaws.com/uploads/ad_page/image/83842/thumb_kitten_otis.JPG?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1587656777&Signature=n99jUk1dxNe9hC8BmFeDNaL9aDk%3D'
            },
          ]
        }
      }
    }
  end
end
