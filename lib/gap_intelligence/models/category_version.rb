module GapIntelligence
  class CategoryVersion < Record
    attribute :name
    attribute :full_name
    attribute :display_name
    attribute :display_cents
    attribute :category_id
    attribute :frequency
    attribute :published_date, class: Date
    attribute :publish_tag_only
    attribute :publish_product_location
    attribute :country_code
    attribute :icon
    attribute :report_types

    def report_names
      @report_names ||= begin
        raw['report_names'].map do |report_name_attributes|
          GapIntelligence::ReportName.new(report_name_attributes)
        end
      end
    end
  end
end
