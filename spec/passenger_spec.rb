require "./lib/passenger"

RSpec.describe Passenger do
  before(:each) do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe "#initialize" do
    it "can initialize" do
      expect(charlie).to be_an_instance_of(Passenger)
      expect(taylor).to be_an_instance_of(Passenger)

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
      expect(charlie.driver?).to eq(false)
    end
  end

  describe "#adult?" do
    it "can check if a passenger is an adult" do
      expect(charlie.age).to eq(18)
      expect(charlie.adult?).to eq(true)

      expect(taylor.age).to eq(12)
      expect(taylor.adult?).to eq(false)
    end
  end

  describe "#drive" do
    it "can make a passenger a driver" do
      charlie.drive

      expect(charlie.driver?).to eq(true)
    end
  end
end
