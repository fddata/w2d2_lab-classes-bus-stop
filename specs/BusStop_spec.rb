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

  def test_clear_queue
    @busstop.add_person_to_queue(@person)
    @busstop.add_person_to_queue(@person2)
    @busstop.clear_queue
    result = @busstop.get_queue_size
    assert_equal(0, result)
  end

  def test_pick_up_from_stop
    @busstop.add_person_to_queue(@person)
    @busstop.pick_up_from_stop()

    result1 = @bus.get_number_of_passengers
    result2 = @busstop.get_queue_size
    assert_equal(1, result1)
    assert_equal(0, result2)
  end
end
