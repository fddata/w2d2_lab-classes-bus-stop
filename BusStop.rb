class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def get_queue_size
    @queue.count

  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

  def clear_queue
    @queue.clear
  end

  def pick_up_from_stop(busstop)
    @bus.pick_up(@person)
    @busstop.clear
  end
end
