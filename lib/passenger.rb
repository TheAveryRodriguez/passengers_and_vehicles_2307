class Passenger
  attr_accessor :name,
    :age,
    :drive

  def initialize(passenger_details, driver = false)
    @name = passenger_details["name"]
    @age = passenger_details["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end
