class User
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    self.first_name = first_name
    self.last_name = last_name
    self.age = age
  end

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

end

john = User.new "john", "doe", 21
print(john.full_name)