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
  def get_password
    @password
  end
  def set_password(new_password)
    @password = new_password
  end

  private
    @password

end

john = User.new "john", "doe", 21
print(john.full_name)
p john.get_password
p "-" * 50
puts "public methods"
p "-" * 50
puts User.public_methods false
puts "private methods"
p "-" * 50
puts User.private_methods false
puts "protected methods"
p "-" * 50
puts User.protected_methods false