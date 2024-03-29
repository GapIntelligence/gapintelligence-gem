require 'gap_intelligence/version'

require 'oauth2'
require 'uri'

# Errors
require 'gap_intelligence/errors/configuration_error'
require 'gap_intelligence/errors/authentication_error'
require 'gap_intelligence/errors/request_error'

require 'gap_intelligence/configuration'
require 'gap_intelligence/models/record'
require 'gap_intelligence/models/merchant_product_version'
require 'gap_intelligence/models/calculated_pricing'
require 'gap_intelligence/models/ad_share'
require 'gap_intelligence/models/ad_image'
require 'gap_intelligence/models/ad_page'
require 'gap_intelligence/models/ad_page_advertisement'
require 'gap_intelligence/models/advertisement'
require 'gap_intelligence/models/brand'
require 'gap_intelligence/models/category'
require 'gap_intelligence/models/category_version'
require 'gap_intelligence/models/country'
require 'gap_intelligence/models/delta_advertisement'
require 'gap_intelligence/models/delta_aggregate_record'
require 'gap_intelligence/models/delta_pricing'
require 'gap_intelligence/models/delta_promotion'
require 'gap_intelligence/models/download'
require 'gap_intelligence/models/file'
require 'gap_intelligence/models/header'
require 'gap_intelligence/models/in_store_image'
require 'gap_intelligence/models/merchant'
require 'gap_intelligence/models/merchant_pricing_trend'
require 'gap_intelligence/models/merchant_pricing_trend_pricing'
require 'gap_intelligence/models/merchant_pricing_trend_product_version'
require 'gap_intelligence/models/notes_and_changes_record'
require 'gap_intelligence/models/pricing'
require 'gap_intelligence/models/pricing_image'
require 'gap_intelligence/models/product'
require 'gap_intelligence/models/promo_matrix_pricing'
require 'gap_intelligence/models/promo_matrix_product_version'
require 'gap_intelligence/models/promotion'
require 'gap_intelligence/models/record_set'
require 'gap_intelligence/models/report_name'
require 'gap_intelligence/client'
