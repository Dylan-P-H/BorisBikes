class DockingStation
  attr_reader :bike
  def release_bike
    @bike
  end
  def store_bike(bike)
    @bike = bike
  end
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end

station = DockingStation.new
