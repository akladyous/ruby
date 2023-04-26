def only_keywords(**) # accept keyword arguments
  p(**) # and pass them to the next method
end
only_keywords(name: "paolo", age: 23)


def only_args(*)
  p(*)
end