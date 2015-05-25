class DockingStation

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock bike
    raise "Station is full" if full?
    @bikes << bike
  end

  def release bike
    @bikes.delete(bike)
  end

  def full?
    bike_count == @capacity
  end

  def available_bikes
    @bikes.reject(&:broken?)
  end

  def broken_bikes
    @bikes.select(&:broken?)
    # @bikes.select { |bike| bike.broken?) }
  end

  def release_if(&block)
    # output = @bikes.select &block
    # output.each {|bike| @bikes.delete(bike) }
    # or
    @bikes.select(&block)
      .map { |bike| @bikes.delete(bike) }
  end

end