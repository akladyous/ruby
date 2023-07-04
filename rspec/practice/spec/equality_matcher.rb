describe "expectation matchers" do

  describe "equivalence matcher" do
    it "match loose equiality with #rq" do
      a=1
      b=1
      expect(a).to eql(b)
    end
    it "match value equality with #eql" do
      a=1
      b=1
      expect(a).to eql(b)
    end
    it "match indentity equality with #equal" do
      a=1
      b=1
      expect(a).to equal(b)
    end
  end
end
