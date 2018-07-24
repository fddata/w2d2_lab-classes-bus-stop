require 'minitest/autorun'
require 'minitest/rg'
require_relative '../BusStop.rb'
require_relative '../bus.rb'
require_relative '../person.rb'


class BusStopTest < MiniTest::Test

  def setup
    @busstop = BusStop.new("Savoy Centre")
  end

  def test_queue_size
    result = @busstop.get_queue_size
    assert_equal(0, result)
  end

  def test_add_person_to_queue
    @busstop.add_person_to_queue(@person)
    result = @busstop.get_queue_size
    assert_equal(1, result)
  end

end
