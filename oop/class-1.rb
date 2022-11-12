
class Person
  attr_reader :first_name, :last_name, :age
  def self.inherited(subclass)
    p "-" * 20
    puts "new subclass #{subclass}"
    p "-" * 20
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

class Student < Person
  def initialize(first_name, last_name, age)
    super(first_name, last_name)
    @age = age
  end
end


s1 = Student.new('will', 'smith', 20)
puts "#{s1.first_name} #{s1.last_name}  #{s1.age}"
p "-" * 20
puts "student instance variables : ", s1.instance_variables
p "-" * 20
puts s1.class.superclass.instance_variables
p "-" * 20


