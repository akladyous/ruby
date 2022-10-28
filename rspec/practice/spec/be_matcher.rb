describe "BE Matchers" do

  describe "Truthy Matcher" do
    it "expected to be TRUE with #truthy" do
      value = "Test"
      expect(value).to be_truthy
    end
  end

  describe "Nil Matcher" do
    it "expected to be NIL" do
      a=nil
      expect(a).to be_nil
    end
  end
end
