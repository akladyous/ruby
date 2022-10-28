describe "before and after callbacks" do
  before(:all) do
    puts "outer before all"
  end

  context "in outer group" do
  end

  after(:all) do
    puts "outer after all"
  end

  describe "nested group" do
    before(:all) do
      puts "inner before all"
    end

    example "in nested group" do
    end

    after(:all) do
      puts "inner after all"
    end
  end

end
