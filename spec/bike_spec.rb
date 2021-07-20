require 'Bike'

describe Bike do
  it "should respond to" do
    expect(Bike.new.working?).to eq("working")
  end
end