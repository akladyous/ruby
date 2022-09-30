require 'car'

describe 'Car' do


  describe 'attributes' do
    it "it allows reading and writing :make" do
      car = Car.new
      car.make = 'Renault'
      expect(car.make).to eq('Renault')
    end

    it "it allows reading and writing :year" do
      car = Car.new
      car.year = 2020
      expect(car.year).to eq(2020)
    end

    it "will match numeric range" do
      car = Car.new
      car.year = 1995
      expect(car.year).to be_between(1995, 2022).inclusive
    end

    it "it allows reading and writing :color" do
      car = Car.new
      car.color = 'Red'
      expect(car.color).to eq('Red')
    end

  end

end
