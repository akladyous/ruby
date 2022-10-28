describe "collection matchers" do

  it "include value" do
    array = [1,2,3]
    expect(array).to include(2)
  end
  it "starts with value" do
    array = [1,2,3]
    expect(array).to start_with(1)
  end
  it "ends with value"  do
    array = [1,2,3]
    expect(array).to end_with(3)
  end
  it "match an array" do
    array1 = [1,2,3]
    array2 = [2,3,1]
    expect(array1).to match_array(array2)
  end
  it "contain exactly" do
    array = [1,2,3]
    expect(array).to contain_exactly(1,2,3)
  end
  it "not contain exactly" do
    array = [1,2,3]
    expect(array).to_not contain_exactly(1,2)
  end
end
