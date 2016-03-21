require 'spec_helper'

describe GapIntelligence do
  it 'has a version number' do
    expect(GapIntelligence::VERSION).not_to be nil
  end

  it 'allows clients to be created' do
    expect(GapIntelligence::Client).to respond_to(:new)
  end
end
