require 'debug'

module Calc
  attr_accessor :var1, :var2
    def somma x
      x + x
    end

  def prova
    p "prova"
  end
  define_method(:new_method, instance_method(:prova))
  define_method :new_method_with_block do |&block|
    # debugger
    block.call
  end
end

class Prova
  include Calc

  def initialize
    @var1 = @var2 = 1
  end

  def a() print "letter A"; end
  def b() print "letter A"; end
  def c() print "letter A"; end

  def test
    p 'test'

  end

  Dispatcher = {  "a" => instance_method(:test)  }

  def display_unbound_method
    Dispatcher['a']

  end
end

x = Prova.new
# p x.somma 2
# p x.display_unbound_method
# p x.new_method
p x.new_method_with_block { puts "with given block" }
