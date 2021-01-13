require 'spec_helper'

describe GapIntelligence::ReportName do
  include_examples 'Record'

  describe 'attributes' do
    subject(:report_name) { described_class.new build(:report_name) }

    it 'has name' do
      expect(report_name).to respond_to(:name)
    end
  end
end
