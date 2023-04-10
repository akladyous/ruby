def test(a=1,b=1,c=1)

end
p method(:test).arity           # 3
                                # Returns a nonnegative integer for methods that take a fixed number of arguments
                                #
p method(:test).parameters      # [[:req, :a], [:req, :b], [:req, :c]]
p method(:test).parameters.map{ |arg| arg.last }.map(&:to_s) # get method argument names !!!!


def prova
  puts "hello"
end


def test1
  x = 10
end
def xProva
  x = 10
end

