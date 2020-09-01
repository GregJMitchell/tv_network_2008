require './lib/show'
require 'minitest/autorun'
require 'minitest/pride'

class ShowTest < Minitest::Test
  def test_it_exists
    knight_rider = Show.new("Knight Rider", "Glen Larson", %w[michael_knight kitt])

    assert_instance_of Show, knight_rider
  end
end