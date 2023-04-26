def only_keywords(**) # accept keyword arguments
  p(**) # and pass them to the next method
end

def only_args(*)
  p [*].length
  p(*)
end
only_keywords(name: "paolo", age: 23)
only_args(1,2,3,4)

def only_args(*arguments)
  p arguments.length
end
only_args(1,2,3)
def only_kwargs(**kwargs)
  p kwargs.keys
end
only_kwargs(name: 'paolo', age: 10)
def kwargs_with_default(name: 'paolo', **rest)
  p name
ensure rest.include? :age
p ":age is missing"
  p rest[:age]
  # p "age: #{rest}" if rest.keys.include? :age
end
kwargs_with_default