require 'debug'
module Parent
  singleton_class.attr_accessor :at1
  # def self.included(klass)
  #   klass.attr_accessor :at1
  # end
end

class Child
  include Parent
end

c1= Child.new
module A
