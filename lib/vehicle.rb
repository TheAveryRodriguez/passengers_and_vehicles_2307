class Vehicle
  attr_reader :year,
    :make,
    :model,
    :speed

  def initialize(year, make, model, speeding = false)
    @year = year
    @make = make
    @model = model
    @speeding = false
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def passengers
  end

  def add_passenger
  end

  def num_adults
  end
end
