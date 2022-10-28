describe "collection matchers" do
  before(:all) do
    @odd = [1,3,5]
    @array1 = [1,2,3]
    @array2 = [2,3,1]
    @hash1 = {a: 1, b: 2}
  end
  it "include value" do
    expect(@array1).to include(2)
  end
  it "starts with value" do
    expect(@array1).to start_with(1)
  end
  it "ends with value"  do
    expect(@array1).to end_with(3)
  end
  it "match an array" do
    expect(@array1).to match_array(@array2)
  end
  it "contain exactly" do
    expect(@array1).to contain_exactly(1,2,3)
  end
  it "not contain exactly" do
    expect(@array1).to_not contain_exactly(1,2)
  end
  it "include with other matchers" do
    expect(@odd).to include(be_odd.and be < 10)
  end
  it "include with other matchers" do
    expect(@odd).to include(be_odd).at_least :twice
  end
  it "include with at_least" do
    expect(@odd).to include(be_odd).at_least(3).times
  end
  it "includes key pairs" do
    expect(@hash1).to include(:a => 1)
  end
  it "includes multiple key pairs" do
    expect(@hash1).to include(:a, :b)
  end
  it "not includes key pairs" do
    expect(@hash1).not_to include(:c => 3)
  end
end
