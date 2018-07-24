#Create a Bus class.
# The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
# The Bus should have a drive method that returns a string (e.g. "Brum brum").

class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []

  end

  def drive(string)
    return string
  end

  def get_number_of_passengers()
    return @passengers.count
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty_bus
    @passengers.clear
  end


end
