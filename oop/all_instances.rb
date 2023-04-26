require 'debug'
class Person
  @@person_all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
    @@person_all << self
  end

  def self.inherited(subclass)
    subclass.define_method :full_name do
      [first_name, last_name].join(' ')
    end
  end

  def self.person_instances
    @@person_all
  end
end

class Student < Person
  @@student_all = []
  attr_accessor :course

  def initialize(first_name, last_name, course)
    super(first_name, last_name)
    self.course = course
    @@student_all << self
  end

  def self.student_instances
    @@student_all
  end
end
paul = Student.new('will', 'smith', 'english')
puts paul.full_name
