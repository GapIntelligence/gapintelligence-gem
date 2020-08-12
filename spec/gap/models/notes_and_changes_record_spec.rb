require 'spec_helper'

describe GapIntelligence::NotesAndChangesRecord do
  include_examples 'Record'

  let!(:notes_and_changes_data) { build(:notes_and_changes_record) }
  let!(:response_body) { { data: notes_and_changes_data }.to_json }
  let!(:notes_and_changes_record) { described_class.new response_body: response_body }

  describe 'attributes' do
    it 'has raw' do
      expect(notes_and_changes_record).to respond_to(:raw)
    end

    it 'returns response_body in raw[:response_body]' do
      expect(notes_and_changes_record.raw[:response_body]).to eq response_body
    end
  end
end
