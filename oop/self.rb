
class One
  class << self
    def hello
      puts "hello from    : #{self.class}"
    end
  end
  def self.whoami
    puts "self is       : #{self}"
    puts "self class is : #{self.class}"
  end
end
One.hello
One.whoami
one = One.new
puts 'singleton class' ,  one.singleton_class


class Person
end
p1=Person.new
def p1.name
  puts 'ciao'
  puts "singleton method self       : #{self}"
  puts "singleton method self.class : #{self.class}"
end
p1.name
class Class
  def your_name
    "#{name.upcase}"
  end
end
