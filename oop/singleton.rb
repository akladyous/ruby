require 'singleton'

class MySingleton
  include Singleton

  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

  def count
    @count
  end
end


m1 = MySingleton.new
m1.increment
