require 'debug'
class Person
  @@instances = []
  @@count = 0
  def initialize(first_name, last_name, age=nil)
    @first_name = @first_name
    @last_name = @last_name
    @age = age
    @@instances << self
    @@count += 1
  end
  def self.all
      @@instances
  end
  def self.count
      @@count
  end
end
class Student < Person
  def initialize(first_name, last_name, age=nil, class_name)
    # debugger
    super(first_name, last_name, age)
    @class_name = class_name
  end
end

mario = Person.new('mario', 'rossi')
paolo = Student.new('paolo', 'rossi', 20, 'music')
puts "all instances : ", Person.all
puts paolo.object_id
# .last.instance_variables
puts "*" * 40
