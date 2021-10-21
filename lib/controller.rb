require 'airport'

class Controller
  attr_reader :airport

  def id
    @airport.id
  end

  def set_airport(airport)
    @airport = airport
  end

end
