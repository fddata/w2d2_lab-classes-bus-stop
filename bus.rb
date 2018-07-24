#Create a Bus class.
# The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
# The Bus should have a drive method that returns a string (e.g. "Brum brum").

class Bus

  attr_reader :route_number, :destination

def initialize(route_number, destination)
  @route_number = route_number
  @destination = destination
end


end
