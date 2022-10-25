require 'debug'
def check(sum, previous, digits, target, expr)
  debugger
  if digits.length == 0
    if sum + previous == target.to_f
      puts "#{expr} = #{target}"
    end
  else
    1.upto(digits.length) do |i|
      current = digits[0...i]
      remaining = digits[i..-1]
      check(sum + previous, current.to_f, remaining, target, "#{expr} + #{current}")
      check(sum, previous * current.to_f, remaining, target, "#{expr} * #{current}")
      check(sum, previous / current.to_f, remaining, target, "#{expr} / #{current}")
      check(sum + previous, -current.to_f, remaining, target, "#{expr} - #{current}")
    end
  end
end

def f(digits, target)
  1.upto(digits.length) do |i|
    current = digits[0...i]
    remaining = digits[i..-1]
    check(0, current.to_f, remaining, target, current)
  end
end

require 'benchmark'
time = Benchmark.measure do
  f("314159265358", 27182)
end
puts time

# d1="1234"
# for x in 0..d1.length
#   puts "index at: #{x} value is : #{d1[x]}"
# end
# puts '-' * 40
# 1.upto(d1.length) do |x|
#   puts "index at: #{x} value is : #{d1[x]}"
# end
