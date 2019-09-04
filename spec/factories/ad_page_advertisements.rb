FactoryGirl.define do
  factory :ad_page_advertisement, class: Hash do
    ad_date '2017-04-24'
    end_date '2017-04-24'
    promotion_type 'ad_only'
    ad_location 'Home Left'
    print_verified 'N'
    online_verified true
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
    page_number 'na'
    merchant_sku 'na'
    ad_name 'Online Banner Ad'
    details 'Now available; Product Galaxy S8 - Midnight Black; ad name Online Banner Ad; pp Home Left'
    region 'na'
    total_value nil
    category 'Smartphones'
    brand 'Samsung'
    part_number 'na'
    merchant 'Target.com'

    initialize_with do
      {
        'id' => 1,
        'type' => 'ad_page_advertisement',
        'attributes' => attributes.stringify_keys
      }
    end
  end
end
