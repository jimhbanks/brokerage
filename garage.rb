class Garage

  DEFAULT_CAPACITY = 50

  attr_accessor :capacity

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def fix bike
    bike.fix
  end
  
end