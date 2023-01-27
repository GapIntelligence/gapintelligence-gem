require 'spec_helper'

describe GapIntelligence::DeltaAggregateRecord do
  include_examples 'Record'

  describe 'attributes' do
    let!(:data) { build(:delta_aggregation, x: [{ id: 'x1' }], y: [{ id: 'y1' }], values: [{ x: 'x1', y: 'y1', value:1 }]) }
    subject(:record) { described_class.new(data) }

    it 'has x' do
      expect(record.x).to contain_exactly(id: 'x1')
    end

    it 'has y' do
      expect(record.y).to contain_exactly(id: 'y1')
    end

    it 'has values' do
      expect(record.values).to contain_exactly(x: 'x1', y: 'y1', value:1)
    end
  end
end
