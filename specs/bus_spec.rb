require 'minitest/autorun'
require 'minitest/rg'
require_relative '../person.rb'
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

  def test_bus_drive
    result = @bus.drive("Brum Brum")
    assert_equal("Brum Brum", result)
  end

  def test_get_number_of_passengers
    result = @bus.get_number_of_passengers
    assert_equal(0, result)
  end

  def test_bus_pick_up
    @bus.pick_up(@person)
    result = @bus.get_number_of_passengers
    assert_equal(1, result)
  end

  def test_bus_drop_off
    @bus.pick_up(@person)
    @bus.drop_off(@person)
    result = @bus.get_number_of_passengers
    assert_equal(0, result)
  end


end
