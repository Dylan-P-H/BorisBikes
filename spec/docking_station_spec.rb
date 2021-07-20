require "DockingStation"

describe DockingStation do
  it "should respond to" do
    expect(DockingStation.new.release_bike).to eq("HELLO")
  end
end