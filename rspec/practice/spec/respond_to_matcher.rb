# expect(obj).to respond_to(:foo) # pass if obj.respond_to?(:foo)

describe String do
  context "respond_to method" do
    it "should respond to specific method" do
      expect('string').to respond_to(:size)
    end
  end
end
