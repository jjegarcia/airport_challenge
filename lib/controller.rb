require 'airport'

class Controller

  def initialize(airport)
    @airport = airport
  end

  def airport
    airport.id
  end
end