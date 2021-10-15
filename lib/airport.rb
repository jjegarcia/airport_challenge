require_relative '../lib/controller'
DEFAULT_CAPACITY = 20

class Airport
  def initialize(capacity = DEFAULT_CAPACITY)
    @id = 1
    @controller = Controller.new
    @capacity = capacity
    @spaces = []
  end

  attr_reader :id

  attr_reader :controller

  attr_reader :capacity

  def spaces
    @spaces.size
  end
end