FactoryGirl.define do
  factory :product_snapshot, class: Hash do
    initialize_with {
      {
        'brand' => 'Brand 1',
        'name' => 'Product 1',
        'part_number' => 'Part Number',
        'image_url' => 'https://api.com/product/image/1.png',
        'current_average_shelf_price' => '284.0',
        'last_average_shelf_price' => '289.0',
        'current_average_net_price' => '277.4',
        'last_average_net_price' => '283.8',
        'current_placements_count' => '15',
        'last_placements_count' => '14',
        'current_ads_count' => '1',
        'last_ads_count' => '0'
      }
    }
  end
end
