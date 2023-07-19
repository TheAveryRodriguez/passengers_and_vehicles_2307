require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Vehicle do
  describe "#initialize" do
    it "can initialize" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      expect(vehicle).to be_an_instance_of(Vehicle)

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end
end

# vehicle.speeding?
# # => false

# vehicle.speed

# vehicle.speeding?
# # => true

# vehicle.passengers
# # => []

# charlie = Passenger.new({"name" => "Charlie", "age" => 18})
# # => #<Passenger:0x00007fe0da1ec450...>

# jude = Passenger.new({"name" => "Jude", "age" => 20})
# # => #<Passenger:0x00007fe0da2730e0...>

# taylor = Passenger.new({"name" => "Taylor", "age" => 12})
# # => #<Passenger:0x00007fe0da2cf1b0...>

# vehicle.add_passenger(charlie)

# vehicle.add_passenger(jude)

# vehicle.add_passenger(taylor)

# expect(vehicle.passengers).to eq([charlie, jude, taylor])

# expect(vehicle.num_adults).to eq(2)
