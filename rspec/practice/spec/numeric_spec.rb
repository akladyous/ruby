describe "Numeric Matchers" do

  describe "be_within matcher" do
    it "should be true if 3.03 fall within range of numbers" do
      # expect(3.05).to be_within(0.05).of(3)
      expect(2.95).to be_within(0.05).of(3)
    end
  end

  describe "between matcher" do
    it "expected to be with in with #be_within" do
      expect(4.3).to be_between(1.00, 10.04)
      # expect(5).to be_within(1).of(10)
    end
  end

  describe 'between inclusive' do
    it "return true if number is inclusive" do
      expect(3).to be_between(1,3).inclusive
    end
    it "return true if number is exclusive" do
      expect(2).to be_between(1,3).exclusive
    end
  end

end
