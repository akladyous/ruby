
class Person
	attr_accessor :first_name, :last_name, :age

	attr_reader :color

	def initialize
		@color = "white"

	end

	# @@instances = self.instances
	#Parent.inherited method is called when the Child class inherits from Parent. Note that this method takes the subclass as parameter—Child, in our case. This mechanism allows you to interact with the Parent class to define a set of behaviors only if it is inherited.
	def self.inherited(subclass)
		puts "new subclass inherited by: #{subclass}"
		subclass.define_method :nomeStudente do
			puts "ciao studente"
		end
	end

	def self.classMethodTest
		puts "'classMethodTest' in parent class Person"
	end

	def instanceMethod
		puts "'instanceMethod' from parent class Person"
	end

end

class Student < Person
	def instanceMethod
		puts "\n'instanceMethod' is overridden by the inherited class" 
		puts "instance method from child class Student\n"
	end
end	
puts "Parent class 'Person"
p "*" * 40
puts "is nomeStudent is instance method of Student: #{Student.instance_methods.include?(:nomeStudente)}"
puts "is nomeStudent is class method of Student: #{Student.methods.include?(:nomeStudente)}"

puts "\nChild class Student"
p "*" * 40
student1 = Student.new

def student1.prova
	puts "instance define it's own method"
end

student1.first_name = "paolo"
puts student1.first_name
puts student1.color

