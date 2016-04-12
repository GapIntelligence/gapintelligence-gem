require 'spec_helper'

describe GapIntelligence::Record do
  it 'allows records to be created' do
    expect(described_class).to respond_to(:new)
  end

  describe '.attributes' do
    let(:hash) { {
      'name' => 'Name 1',
      'inner' => { 'name' => 'Name 2' },
      'date' => Date.today.to_s,
      'time' => Time.now.to_s
    } }
    subject(:record) { described_class.new hash }

    before { described_class.attributes :name }

    it 'defines method' do
      expect(record.name).to eq('Name 1')
    end

    it 'defines method to return specified type' do
      described_class.attributes :inner, class: described_class

      expect(record.inner.name).to eq('Name 2')
    end

    it 'converts attribute value to date and time' do
      described_class.attributes :date, class: Date
      described_class.attributes :time, class: Time

      expect(record.date).to be_an_instance_of(Date)
      expect(record.time).to be_an_instance_of(Time)
    end

    it 'assigns an id' do
      expect(
        Record.new('id' => 105).id
      ).to eq 105
    end
  end
end
