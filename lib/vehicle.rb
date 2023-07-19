class Vehicle
  attr_reader :year,
    :make,
    :model,
    :speed

  def initialize(year, make, model, speeding = false, passengers = [])
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def passengers
    passengers = []
    passengers << passengers
  end

  def add_passenger(passenger)
  end

  def num_adults
  end
end
