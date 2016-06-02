FactoryGirl.define do
  factory :merchant_pricing_trend, class: Hash do
    initialize_with {
      {
        "values" => [
          {
            "Merchant" => "BestBuy.com",
            "Brand" => "SunBriteTV",
            "Product" => "32\" LED",
            "Part #" => "3270HD-SL",
            "Product Status" => "Current",
            "Price" => "Net",
            "id" => "100586:4:Net",
            "2016-01-31" => "1499.00",
            "2016-02-07" => "1499.00",
            "2016-02-14" => "1499.00",
            "2016-02-21" => "1499.00",
            "2016-02-28" => "1499.00",
            "Display Type" => "LED",
            "HDR" => "N",
            "Smart TV" => "N",
            "Size Class" => "32",
            "Max. Refresh Rate" => "60",
            "Display Resolution" => "1920 x 1080"
          }
       ],
        "headers" => [
          "Merchant",
          "Brand",
          "Product",
          "Part #",
          "Product Status",
          "Price",
          "2016-01-31",
          "2016-02-07",
          "2016-02-14",
          "2016-02-21",
          "2016-02-28",
          "Display Type",
          "HDR",
          "Smart TV",
          "Size Class",
          "Max. Refresh Rate",
          "Display Resolution"
        ]
      }
    }
  end
end
