FactoryGirl.define do
    factory :promotion, class: Hash do
     start_date '2014-07-27'
     end_date '2014-08-02'
     promotion_type 'instant_savings'
     value 30.0
     bundle_type 'na'
     merchant_sku 'na'
     notes nil
     category_name 'Personal & SOHO Printers'
     brand 'HP'
     part_number 'CE749A'
     product_name 'LaserJet Pro P1606dn'
     merchant 'Microcenter.com'
     deleted false

     initialize_with {
      {
        'id' => 2480,
        'type' => 'promotions',
        'attributes' => attributes.stringify_keys
    }
}
end
end
