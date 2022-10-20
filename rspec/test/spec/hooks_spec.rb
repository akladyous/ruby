class Something
  class << self
    def increment
      @count ||= 0
      @count += 1
    end
    def count
      @count ||= 0
    end
  end

end
describe 'Before Hook' do
  before(:all) do

  end
  describe ''



end
