FactoryGirl.define do
  factory :download, class: Hash do
    start_at '2015-11-24'
    end_at '2016-02-23'
    created_at Time.now.to_s
    category_names 'TVs'
    country_names ['United States']
    report_types ['Pricings']
    merchant_names ['Walgreens']
    brand_names ['HP']
    channels []
    pricing_date 'date_collected'
    pricing_date_type 'raw'
    advertisements_headers ['Category', 'Part Number', 'Product']
    pricings_headers ['Category', 'Part Number', 'Product']
    promotions_headers ['Category', 'Part Number', 'Product']
    included_core_spec_headers ['Product Status', 'Display Type']
    included_spec_headers ['Smart TV', 'HDR']
    standalone_core_spec_headers ['WiFi', '3D']
    standalone_spec_headers ['Launch Date', 'Width', 'Height']
    file_type 'csv'
    custom_file_name ''
    status 'done'

    attachment 'https://gapi.s3.amazonaws.com/uploads/download/attachment/2480/tvs-pricings-20151124-20160223.zip'
    product_info_fields_headers []

    initialize_with {
      {
        'id' => 2480,
        'type' => 'downloads',
        'attributes' => attributes.stringify_keys
      }
    }
  end
end
