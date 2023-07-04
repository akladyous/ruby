describe "Numeric Matchers" do

  describe "be_within matcher" do
    it "expected to be with in with #be_within" do
      expect(4.3).to be_between(1.00, 10.04)
      # expect(5).to be_within(1).of(10)
    end
  end

end
