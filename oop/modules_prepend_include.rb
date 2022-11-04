module Bar
  def my_method
    'inside the module'
  end
end

class Foo
  include Bar
  def my_method
    'inside the class'
  end
end

x = Foo.new
p x.my_method
