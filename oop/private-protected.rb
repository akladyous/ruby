class Test
  private

  def private_method
    puts "private #{self.class}"
  end

  protected

  def protected_method
    puts "protected #{self.class}"
  end
end

class Prova < Test
  def itself
    puts self
  end
  def call_private
    self.private_method
  end

  def call_protected
    protected_method
  end
end

t1 = Test.new
# t1.send :private_method
# t1.send :protected_method
t1.private_method
# t1.protected_method # `<main>': protected method `protected_method' called for #<Test:0x0000000108a4b308> (NoMethodError)
p1 = Prova.new
# p1.private_metod      # `<main>': undefined method `private_metod' for #<Prova:0x000000010d687078> (NoMethodError)
# p1.protected_method   # `<main>': protected method `protected_method' called for #<Test:0x0000000108a4b308> (NoMethodError)
# p1.call_private         # private   -> ok
# p1.call_protected       # protected -> ok
# p1.protected_method
