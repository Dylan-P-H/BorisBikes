class DockingStation
  attr_reader :bike
  def initialize 
    @bike = 0
  end
  # def release_bike
  #   return @bike
  # end
  def store_bike
    fail 'No bikes available' if @bike
    @bike = bike
  end
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end

# station = DockingStation.new

# p station.store_bike
# # p @bike
# p station.release_bike
