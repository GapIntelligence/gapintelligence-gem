module GapIntelligence
  class Product < Record
    attribute :name
    attribute :part_number
    attribute :product_status
    attribute :manufacturer_suggested_retail_price
    attribute :estimated_retail_price
    attribute :net_estimated_price
    attribute :average_online_price
    attribute :average_retail_dot_com_net_price
    attribute :average_retail_dot_com_weekly_net_price
    attribute :average_retail_net_price
    attribute :average_retail_weekly_net_price
    attribute :average_ecom_net_price
    attribute :average_ecom_weekly_net_price
    attribute :most_frequent_price
    attribute :most_frequent_weekly_price
    attribute :most_frequent_monthly_price
    attribute :most_frequent_retail_weekly_price
    attribute :most_frequent_retail_net_price
  end
end
