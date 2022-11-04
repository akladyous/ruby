module Foo

  def test1
    puts 'test1 from Foo Module'
  end
end

class A
  include Foo
end
class B
  extend Foo
end
a1=A.new
puts 'include Foo as instance methods'
puts a1.test1
puts "-" * 40
puts 'extend Foo as class methods'
puts B.test1
puts "-" * 40
