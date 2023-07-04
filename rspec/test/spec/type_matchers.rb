require "../car-project/lib/car.rb"

describe "Type Matchers" do

  describe "KIND_OF Matcher" do
    it "expected to be kind of Numeric with #kind_of" do
      a=10
      expect(a).to be_a_kind_of(Numeric)
    end
  end

  describe "INSTANCE_OF Matcher" do
    it "expected to be an instance of 'Type' with #instance_of" do
      @car = Car.new
      expect(@car).to be_an_instance_of(Car)
    end
  end

end
