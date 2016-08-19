module GapIntelligence
  class MerchantPricingTrend < Record
    def variants
      @variants ||= begin
        parsed = MultiJson.load(raw[:response_body]) rescue {}
        data = parsed.fetch('data', {})
        data['variants']
      end
    end
  end
end
