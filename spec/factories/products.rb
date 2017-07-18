FactoryGirl.define do
  factory :product, class: Hash do
    initialize_with {
      {
        'id' => '123',
        'type' => 'products',
        'attributes' => {
          'name' => 'My Awesome Tablet',
          'part_number' => '1234-9999',
          'brand_name' => 'Tablet Maker',
          'category_name' => 'Tablets',
          'product_status' => 'NEW',
          'manufacturer_suggested_retail_price' => '12.34',
          'estimated_retail_price' => '12.34',
          'net_estimated_price' => '12.34',
          'average_online_price' => '12.34',
          'average_retail_dot_com_net_price' => '12.34',
          'average_retail_dot_com_weekly_net_price' => '12.34',
          'average_retail_net_price' => '12.34',
          'average_retail_weekly_net_price' => '12.34',
          'average_ecom_net_price' => '12.34',
          'average_ecom_weekly_net_price' => '12.34',
          'most_frequent_price' => '12.34',
          'most_frequent_weekly_price' => '12.34',
          'most_frequent_monthly_price' => '12.34',
          'most_frequent_retail_weekly_price' => '12.34',
          'most_frequent_retail_net_price' => '12.34',
          'links' => {
            'self' => 'http://api.gapintelligence.com/api/v1/products/123'
          },
          'image_url' => 'https://gapi-production.s3.amazonaws.com/uploads/product/image/123/image.jpeg'
        }
      }
    }
  end
end
