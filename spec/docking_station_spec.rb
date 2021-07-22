require "DockingStation"
require 'Bike'

describe DockingStation do
  it "should respond to" do
    # expect(DockingStation.new.release_bike).to eq("HELLO")
  end
  it "should make sure bike is working" do
    expect(Bike.new.working?).to eq("working")
  end
  it "should be able to dock" do
    bike = Bike.new
    expect(DockingStation.new.store_bike(bike)).to eq(bike)
  end
  it "should be able to view the bike already docked" do
    bike = Bike.new
    station = DockingStation.new
    station.store_bike(bike)
    expect(station.bike).to eq(bike)
  end
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      station = DockingStation.new
      station.store_bike(bike)
      expect(station.release_bike).to eq(bike)
    end
  end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      station = DockingStation.new
      expect { station.release_bike }.to raise_error('No bikes available')
    end
  end
end