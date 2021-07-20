require "DockingStation"
require 'Bike'

describe DockingStation do
  it "should respond to" do
    # expect(DockingStation.new.release_bike).to eq("HELLO")
  end
  it "Release bike" do
    expect(DockingStation.new.release_bike).to eq("bike released")
  end
  it "should make sure bike is working" do
    expect(Bike.new.working?).to eq("working")
  end
end