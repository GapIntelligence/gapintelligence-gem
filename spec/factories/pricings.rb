FactoryGirl.define do
  factory :pricing, class: Hash do
    published_date '2023-01-31'
    net_price 10.0
    shelf_price 20.0
    in_stock true
    brand 'Dell'
    category_name 'Notebooks'
    merchant 'BestBuy.com'
    merchant_sku '6409064'
    product 'Inspiron i7300-5395SLV'
    part_number 'i7300-5395SLV'
    product_location nil
    date_collected '2023-01-20'
    promo_percentage '0.4'
    on_ad false
    on_promo false
  end
end
