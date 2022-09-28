
class Person
    @@all = []
    attr_accessor :first_name, :last_name
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
        @@all << self
    end
    def self.instances
        @@all
    end
end

class Teacher < Person
    @@instances = []
    attr_accessor :courses
    def initialize(first_name, last_name, courses)
        super(first_name, last_name)
        @courses = courses
        @@instances << self
    end
    def self.instances
        @@instances
    end
end

paolo = Person.new('paolo', 'akladyous')
paola = Teacher.new('paola', 'teran', 'spanish')
david = Teacher.new('david', 'akladyous', 'italian')
milena = Teacher.new('milena', 'akladyous', 'niente')

puts Person.instances
puts "-" * 30
Teacher.instances.each {|inst| puts "first name: #{inst.first_name}, last name: #{inst.last_name}"}