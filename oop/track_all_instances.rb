class User
  attr_accessor :name, :age
  all = []
  def initialize(name, age)
    self.name = name
    self.age = age
    all << self;
  end

end