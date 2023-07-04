
class User
  @@min_age = 18
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
  def self.get_min_age
    @@min_age
  end

  def self.user_private_class_method
    "this is a private class method"
  end
  private_class_method(:user_private_class_method)
  private
    @password

end
john = User.new "john", "doe", 21
print(john.full_name)
p "john.get_password " , john.get_password
p "-" * 50

puts "public_methods"
p "-" * 50
puts User.public_methods false

puts "private_methods"
p "-" * 50
# private_methods is a method defined on the Object class, which returns a list of all private instance methods defined in the class and its ancestors.
# This means that it includes private methods that can be called on instances of the class as well as private class methods that can be called on the class itself.
puts User.private_methods false
puts "protected_methods"
p "-" * 50
puts User.protected_methods false

puts "private_instance_methods"
# private_instance_methods, on the other hand, is a method defined on the Module class,
# which returns a list of all private instance methods defined in the class or module but excludes any private class methods.
# This means that it only includes private instance methods that can be called on instances of the class or module and not private class methods.
p "-" * 50
puts User.private_instance_methods false

p "-" * 50

begin
pp User.user_private_class_method
rescue NoMethodError => e
  puts e.message
  puts "method doesn't exist"
end






