# [ *(1..5).each{|n| n.odd?} ]
p (1..5).include? 3
[1, 2, 3, 4, 5].include?(3)

Array.new(4) { rand > 0.5 }

[true, false, false, true].all? { |val| val == true || val == false }
[1, 2, 3].all? Integer
[1, 2, 3].any? Numeric
[1, 2, 3].any? { |num| num > 2 }
[1, 2, 3, 4, 5].one? { |num| num > 3 }

Array.new(10) { rand(10) }.count { |num| num > 3 }
