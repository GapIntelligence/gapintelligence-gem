require 'test_helper'
require 'gap_intelligence/client'

class ClientTest < MiniTest::Unit::TestCase
  def setup
    @client = GapIntelligence::Client.new
  end

  def test_it_exists
    assert_kind_of GapIntelligence::Client, @client
  end
end