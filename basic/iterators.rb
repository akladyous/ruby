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

str = "hello world!"
