require 'debug'
module Person
  attr_accessor :one, :two
  def person_name
    "inside the module"
  end
  def self.included(klass)
    puts "Module: #{self} is included by : #{klass}"
    define_method(:test) { puts 'test'}
    klass.instance_methods(false).select {
      |meth|
      meth =~ /\w\=$/
    }.each do |meth|
      define_method(meth) do |*args, &blok|
      # super(*args, &blk)
      end
    end
    p "-" * 40
  end
  def method_one; end
  def method_two; end
  def self.extended(klass)
    puts "Module: #{self} is included by : #{klass}"
    p "-" * 40
  end
end

class Tutti
  # extend Person
  include Person
  def person_name
    "inside class"
  end
  def method_two; end
end

# puts Tutti.person_name
paolo = Tutti.new
puts paolo.person_name
paolo.test
paolo.one = 10

p paolo.instance_variables
p paolo.class.instance_methods false
# puts Tutti.people_name
