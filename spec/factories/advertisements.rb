FactoryGirl.define do
    factory :advertisement, class: Hash do
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
        gap_url 'https//datacenter.gapintelligence.com/Target/banner-ads/2017-04-23-to-2017-04-29'
        region 'na'
        total_value nil
        category_name 'Smartphones'
        brand 'Samsung'
        part_number 'na'
        merchant 'Target.com'
        deleted false

        initialize_with {
          {
            'id' => 2480,
            'type' => 'advertisements',
            'attributes' => attributes.stringify_keys
          }
        }
    end
end
