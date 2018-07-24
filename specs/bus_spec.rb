require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus.rb'

class BusTest < MiniTest::Test

  def setup

    @bus = Bus.new(22, "Ocean Terminal")

  end

  def test_get_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_get_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

end
