FactoryGirl.define do
  factory :download, class: Hash do
    owner_type 'Outsider'
    owner_id 1
    start_at '2015-11-24'
    end_at '2016-02-23'
    created_at Time.now.to_s
    categories ['1']
    category_versions ['1']
    category_names ['TVs']
    category_version_names ['TVs (US)']
    category_version_full_names ['Televisions (US)']
    countries ['US']
    country_names ['United States']
    report_types ['pricings']
    report_type_names ['Pricings']
    merchants ['Walgreens']
    brands ['HP']
    channels []
    advertisements_headers ['Category', 'Part Number', 'Product']
    pricings_headers ['Category', 'Part Number', 'Product']
    promotions_headers ['Category', 'Part Number', 'Product']
    included_core_spec_headers ['Product Status', 'Display Type']
    included_spec_headers ['Smart TV', 'HDR']
    standalone_core_spec_headers ['WiFi', '3D']
    standalone_spec_headers ['Launch Date', 'Width', 'Height']
    product_info_fields_headers []
    pricing_date 'date_collected'
    pricing_date_type 'raw'
    file_type 'csv'
    custom_file_name ''
    status 'done'

    initialize_with {
      {
        'id' => 2480,
        'type' => 'downloads',
        'attributes' => attributes.stringify_keys
      }
    }
  end
end
