require 'debug'

module Bar
  def my_method
    'inside the module'
    super
  end
end

class Foo
  prepend Bar
  def my_method
    'inside the class'
  end
end

x = Foo.new
p x.my_method
