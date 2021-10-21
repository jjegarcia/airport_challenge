require 'controller'
require 'airport'
describe Controller do
  it "should display airport name" do
    airport = Airport.new
    subject.set_airport(airport)
    expect(subject.id).to eq(airport.id)
  end
end
