class Controller
  def land(plane,spaces,capacity,stormy,id)
    fail 'airport at it\'s max capacity' unless spaces.size < capacity
    fail 'stormy weather' unless stormy != WEATHER_STATES[:stormy]
    plane.land(id)
    spaces << plane
  end

  def take_off(spaces,stormy,id)
    fail 'no plane available' unless spaces.size.positive?
    fail 'stormy weather' unless stormy != WEATHER_STATES[:stormy]
    plane = spaces.pop
    plane.take_off(id)
  end

end
