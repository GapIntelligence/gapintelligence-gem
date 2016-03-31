FactoryGirl.define do
  factory :download, class: Hash do
    start_at "2015-11-24"
    end_at "2016-02-23"
    user "ccamacho@gapintelligence.com"
    merchant_names "[]"
    brand_names "[]"
    file_type "csv"
    advertisements_headers "[]"
    pricings_headers '["Category", "Part Number", "Product", "Merchant", "Net Price", "Shelf Price", "Product Status", "On Ad", "On Promo", "Instant Savings", "Mail in Rebate", "Price Drop", "Gift Card", "Peripheral", "Bundle", "Free Gift", "Merchant Rewards", "PC Bundle", "Recycling Rebate", "Total Value", "Promotion Notes", "Instant Savings End Date", "Mail in Rebate End Date"]'
    promotions_headers "[]"
    custom_file_name ""
    included_spec_headers "[]"
    included_core_spec_headers '["Size Class", "Display Type", "Display Resolution", "Max. Refresh Rate", "Smart TV", "HDR", "Product Status"]'
    standalone_core_spec_headers "[]"
    standalone_spec_headers "[]"
    status "done"
    attachment "https://gapi.s3.amazonaws.com/uploads/download/attachment/2480/tvs-pricings-20151124-20160223.zip"
    country_names '["United States"]'
    product_info_fields_headers "[]"
    category_names "TVs"
    channels "[]"
    pricing_date_type "raw"
    pricing_date "date_collected"

    initialize_with {
      {
        "id" => 2480,
        "type" => "downloads",
        "attributes" => attributes.stringify_keys
      }
    }
  end
end
