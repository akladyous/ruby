class Thing
  def widgets
    @widgets ||= []
  end
end

describe 'Before Hook' do
  before(:context) do
    puts 'BEFORE(:context) Hook'
    @thing = Thing.new
  end
  before(:example) do
    @thing_two = Thing.new
    puts 'before each example state for @thing_two : ' + @thing_two.widgets.count.to_s
  end
  it 'initalized in before(:context)' do
    expect(@thing.widgets.count).to eq(0)
  end
  it 'can accept new widgets' do
    @thing.widgets << Object.new
  end
  it 'shares the state between examples' do
    expect(@thing.widgets.count).to eq(1)
  end
  context 'nested block one' do
    it 'still have the same state' do
      expect(@thing.widgets.count).to eq(1)
    end
  end
  context 'nested block two' do
    it 'still have the same state' do
      expect(@thing.widgets.count).to eq(1)
    end
  end
end
