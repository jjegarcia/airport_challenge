require 'controller'
require 'airport'
describe Controller do
  it "should display airport name" do
    airport=Airport.new
    expect(subject.airport).to eq(airport.id)
  end
end
