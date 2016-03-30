require 'webmock/rspec'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'gap_intelligence'

RSpec.configure do |config|
  include GapIntelligence
end
