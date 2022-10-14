def test(a=1,b=1,c=1)

end
p method(:test).arity           # 3
p method(:test).parameters      # [[:req, :a], [:req, :b], [:req, :c]]
p method(:test).parameters.map{ |arg| arg.last }.map(&:to_s) # get method argument names !!!!


