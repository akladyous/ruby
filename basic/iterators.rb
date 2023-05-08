require 'debug'


def sum_numbers(*nums)
  total = 0
  nums.each_with_index do |num, idx|
    total += num
    yield total if block_given?
  end
  total
end

sum_numbers(1,1,1) { |x| puts x}


fib = Enumerator.new do |y|
  a = b = 1
  loop do
    debugger
    y << a
    a, b = b, a + b
  end
end
fib.take(10)


enum = %W[one two three four]
enum.each_with_object([]) { |item, obj| puts obj[0]; obj.push('test') }