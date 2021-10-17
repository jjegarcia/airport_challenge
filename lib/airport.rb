DEFAULT_CAPACITY = 20

class Airport
  attr_reader :id
  attr_reader :capacity
  attr_reader :weather
  attr_reader :controller

  def initialize(capacity = DEFAULT_CAPACITY)
    @id = 1
    @capacity = capacity
    @spaces = []
    @weather = Weather.new
    @controller = Controller.new
  end

  def stormy?
    weather.stormy?
  end

  def spaces
    @spaces.size
  end

  def last_space
    @spaces[-1]
  end
  def land(plane)
    controller.land(plane,@spaces,capacity,stormy?,id)
  end
  def take_off
    controller.take_off(@spaces,stormy?,id)
  end
end
