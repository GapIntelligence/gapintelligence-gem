require 'spec_helper'

describe GapIntelligence::Download do
  include_examples 'Record'

  describe 'attributes' do
    subject(:download) { described_class.new build(:download) }

    it 'has start_at as Date' do
      expect(download.start_at).to be_an_instance_of(Date)
    end

    it 'has end_at as Date' do
      expect(download.end_at).to be_an_instance_of(Date)
    end

    it 'has created_at as Time' do
      expect(download.created_at).to be_an_instance_of(Time)
    end

    it 'has categories as Array' do
      expect(download.categories).to be_an_instance_of(Array)
    end

    it 'has category_names' do
      expect(download.category_names).to be_an_instance_of(Array)
    end

    it 'has countries as Array' do
      expect(download.countries).to be_an_instance_of(Array)
    end

    it 'has country_names as Array' do
      expect(download.country_names).to be_an_instance_of(Array)
    end

    it 'has report_types as Array' do
      expect(download.report_types).to be_an_instance_of(Array)
    end

    it 'has report_type_names as Array' do
      expect(download.report_type_names).to be_an_instance_of(Array)
    end

    it 'has brands as Array' do
      expect(download.brands).to be_an_instance_of(Array)
    end

    it 'has channels as Array' do
      expect(download.channels).to be_an_instance_of(Array)
    end

    it 'has merchants as Array' do
      expect(download.merchants).to be_an_instance_of(Array)
    end

    it 'has pricing_date' do
      expect(download).to respond_to(:pricing_date)
    end

    it 'has advertisements_headers as Array' do
      expect(download.advertisements_headers).to be_an_instance_of(Array)
    end

    it 'has pricings_headers as Array' do
      expect(download.pricings_headers).to be_an_instance_of(Array)
    end

    it 'has promotions_headers as Array' do
      expect(download.promotions_headers).to be_an_instance_of(Array)
    end

    it 'has included_core_spec_headers as Array' do
      expect(download.included_core_spec_headers).to be_an_instance_of(Array)
    end

    it 'has included_spec_headers as Array' do
      expect(download.included_spec_headers).to be_an_instance_of(Array)
    end

    it 'has standalone_core_spec_headers as Array' do
      expect(download.standalone_core_spec_headers).to be_an_instance_of(Array)
    end

    it 'has standalone_spec_headers as Array' do
      expect(download.standalone_spec_headers).to be_an_instance_of(Array)
    end

    it 'has file_type' do
      expect(download).to respond_to(:file_type)
    end

    it 'has custom_file_name' do
      expect(download).to respond_to(:custom_file_name)
    end

    it 'has status' do
      expect(download).to respond_to(:status)
    end
  end
end
