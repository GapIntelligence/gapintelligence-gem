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

  context 'pagination' do
    context 'with meta' do
      let(:pagination) { {
        'current_page' => 1,
        'next_page' => 2,
        'prev_page' => nil,
        'total_pages' => 4,
        'total_count' => 99
      } }
      subject(:record_set) { described_class.new [], meta: { 'pagination' => pagination } }

      it 'responds to total_pages' do
        expect(record_set.total_pages).to eq(pagination['total_pages'])
      end

      it 'responds to current_page' do
        expect(record_set.current_page).to eq(pagination['current_page'])
      end

      it 'responds to limit_value' do
        expect(record_set.limit_value).to eq(25)
      end
    end

    context 'without meta' do
      subject(:record_set) { described_class.new [], meta: nil }

      it 'responds to total_pages' do
        expect(record_set.total_pages).to eq(nil)
      end

      it 'responds to current_page' do
        expect(record_set.current_page).to eq(nil)
      end

      it 'responds to limit_value' do
        expect(record_set.limit_value).to eq(nil)
      end
    end
  end
end
