require 'spec_helper'

describe GapIntelligence::Specification do
  include_examples 'Record'

  describe 'attributes' do
    subject { described_class.new build(:specification) }

     it 'has data' do
      expect(subject).to respond_to(:data)
    end

     it 'has part_number' do
      expect(subject).to respond_to(:part_number)
    end

     it 'has pvid' do
      expect(subject).to respond_to(:pvid)
    end

     it 'has country_code' do
      expect(subject).to respond_to(:country_code)
     end

     it 'has category_name' do
      expect(subject).to respond_to(:category_name)
     end

     it 'has uid' do
      expect(subject).to respond_to(:uid)
    end

     it 'has deleted' do
      expect(subject).to respond_to(:deleted)
    end
  end
end
