module GapIntelligence
  class Download < Record
    attributes :start_at, :end_at, class: Date
    attribute :created_at, class: Time

    attributes :categories, :category_names, class: Array
    attributes :countries, :country_names
    attributes :report_types, :report_type_names, class: Array

    attributes :brands, :channels, :merchants, class: Array
    attributes :pricing_date

    attributes :advertisements_headers, :pricings_headers, :promotions_headers, class: Array
    attributes :included_core_spec_headers, :included_spec_headers, class: Array
    attributes :standalone_core_spec_headers, :standalone_spec_headers, class: Array

    attributes :file_type, :custom_file_name, :status
  end
end
