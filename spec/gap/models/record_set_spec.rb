require 'spec_helper'

describe GapIntelligence::RecordSet do
  subject(:record_set) { described_class.new [1, 2, 3] }

  it 'allows record sets to be created' do
    expect(described_class).to respond_to(:new)
  end

  it 'accepts meta' do
    expect(record_set).to respond_to(:meta)
  end

  it 'iterates over collection' do
    expect { |block| record_set.each(&block) }.to yield_control
  end

  it 'returns element by index' do
    expect(record_set[1]).to eq(2)
  end

  it 'responds to to_ary' do
    expect(record_set).to respond_to(:to_ary)
  end

end
