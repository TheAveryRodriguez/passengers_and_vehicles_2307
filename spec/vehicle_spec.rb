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

  describe "#speeding?" do
    it "can check if a vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq(false)
      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end
  end

  describe "#add_passenger" do
    it "can add a passenger to a vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(vehicle.passengers).to eq([])

      vehicle.add_passenger(charlie)

      vehicle.add_passenger(jude)

      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end

# expect(vehicle.num_adults).to eq(2)
