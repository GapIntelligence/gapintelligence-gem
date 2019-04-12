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
              'image_url' => 'https://gapi-staging.s3.amazonaws.com/uploads/ad_page/image/83688/Manny_Festa.jpg?AWSAccessKeyId=AKIAIHC7SBLIBPKMA6EA&Expires=1586548892&Signature=Pix86Xa1%2BCRjcgNLBhavjOS7OGM%3D'
            },
          ]
        }
      }
    }
  end
end
