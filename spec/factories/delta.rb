FactoryGirl.define do
  factory :delta_aggregation, class: Hash do
    x []
    y []
    values []

    initialize_with {
      {
        'x' => x,
        'y' => y,
        'values' => values
      }
    }
  end

  factory :delta_record, class: Hash do
    transient do
      sequence(:id)
    end

    merchant_id 1
    category_id 1
    category_version_id 1
    brand_id 1
    product_id 1
    product_version_id 1

    category_name 'Category'
    country_code 'CODE'
    category_version_name 'Category (CODE)'
    merchant_name 'Merchant'
    merchant_channel 'ECom'
    brand_name 'Brand'
    part_number 'PN1'
    product_version_name 'Product 1'
    product_status 'Current'
    specifications { {} }

    factory :delta_advertisement do
      transient do
        type 'advertisements'
      end

      ad_name 'Online Banner Ad'
      details 'Now available; Product Galaxy S8 - Midnight Black; ad name Online Banner Ad; pp Home Left'
      ad_date '2017-04-24'
      end_date '2017-04-24'
      advertisement_type 'retail_circular'
      promotion_type 'ad_only'
      ad_location 'Home Left'
      print_verified 'N'
      online_verified true
      shelf_price nil
      advertised_price nil
      bundle_type 'na'

      instant_savings nil
      mail_in_rebate nil
      price_drop nil
      bundle nil
      peripheral nil
      free_gift nil
      merchant_gift_card nil
      merchant_rewards nil
      recycling nil
      miscellaneous nil

      total_value nil
      page_number 'na'
      image_number 'na'
      gap_url nil
    end

    factory :delta_pricing do
      transient do
        type 'pricings'
      end

      date '2017-04-24'
      shelf_price '99.99'
      net_price '69.99'
      promo_value '30.0'
      promo_percentage '0.3'
      on_ad false
      on_promo false
      in_stock true
      product_location 'drawer'
      merchant_debut_date '2017-04-24'
      age_of_placements_wks 0
    end

    factory :delta_promotion do
      transient do
        type 'promotions'
      end

      start_date '2017-04-24'
      end_date '2017-04-24'
      promotion_type 'instant_savings'
      promotion_event nil
      shelf_price '99.99'
      value '30.0'
      promo_percentage '0.3'
      bundle_type nil
      on_ad false
      notes nil
    end

    initialize_with do
      {
        'id' => id.to_s,
        'type' => type,
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
