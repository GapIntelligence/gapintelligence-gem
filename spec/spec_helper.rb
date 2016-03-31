require 'factory_girl'
require 'webmock/rspec'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each { |f| require f }

require 'gap_intelligence'

FactoryGirl.find_definitions

RSpec.configure do |config|
  include GapIntelligence
  config.include FactoryGirl::Syntax::Methods
  config.include StubsHelper
end
