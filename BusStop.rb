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

end
