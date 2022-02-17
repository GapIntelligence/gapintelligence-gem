FactoryGirl.define do
  factory :promo_matrix_product_version, class: Hash, parent: :merchant_product_version do
  end

  factory :promo_matrix_pricing, class: Hash, parent: :calculated_pricing do
  end
end
