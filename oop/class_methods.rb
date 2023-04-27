class User
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age

  end

  def full_name
    "#{@first_name.capitalize} #{self.last_name.capitalize}"
  end

end

john = User.new "john", "doe", 21
print(john.full_name)



