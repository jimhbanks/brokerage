class Van

  DEFAULT_CAPACITY = 5

  attr_accessor :capacity, :bikes

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def pick_up bike
    raise "Van is full" if full?
    @bikes << bike
  end

  def bike_count
    @bikes.count
  end

  def empty?
    @bikes.empty?
  end

  def full?
    bike_count == capacity
  end

end