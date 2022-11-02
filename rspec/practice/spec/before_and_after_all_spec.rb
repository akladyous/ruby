describe "CallBacks" do
  before(:all) { puts "BEFORE ALL -> OUTER" }
  after(:all) { puts "AFTER ALL - OUTER" }
  # before(:each) { puts 'EACH EXAMPLE - OUTER' }

  describe "CONTEXT 1" do
    before(:each) { puts 'EACH EXAMPLE - CONTEXT 1' }
    before(:all) { puts 'BEFORE ALL - CONTEXT 1' }
    it "CONTEXT 1 - EXMPLAE 1" do
      expect( 1+1 ).to be_truthy
    end
    it "CONTEXT 1 - EXMPLAE 2" do
      expect( 1+1 ).to be_truthy
    end
    describe 'NESTED INSIDE CONTEXT 1' do
      it "NESTED INSIDE - CONTEXT 1 - EXMPLAE 2" do
      expect( 1+1 ).to be_truthy
    end
    end
  end
  describe "CONTEXT 2" do
    before(:all) { puts 'BEFORE ALL - CONTEXT 2' }
    it "NESTED 2-> EXAMPLE 1" do
      expect( 1+1 ).to be_truthy
    end
  end
end
