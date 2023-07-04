module Parent
  def self.included(klass)
    klass.extend ClassMethods
  end
  def instance_method_one
    puts 'method_one from parent'
  end
  def instance_method_two
    puts 'method_one from parent'
  end
  module ClassMethods
    def all()
      puts 'all method'
    end
    def find(id)
      puts "found record with id of #{id}"
    end
  end
end

class A
  include Parent
  def say_hello(name)
    puts "hello #{name}"
  end
end
# a=A.new
# puts a.instance_method_one
# puts A.all
# puts 'singleton_methods for A : ', A.singleton_methods
puts A.singleton_class.instance_methods - Class.instance_methods
