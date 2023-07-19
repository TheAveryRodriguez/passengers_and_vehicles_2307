class Passenger
  attr_accessor :name,
    :age

  def initialize(passenger_details)
    @name = passenger_details[:name]
    @age = passenger_details[:age]
  end

  def adult?
    @age >= 18
  end

  def driver?
    # checks what a driver value is
  end

  def drive
    # make a passenger a driver = true
  end
end
