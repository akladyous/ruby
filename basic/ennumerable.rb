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
{ a: 1, b: 2, c: 3, d: 4 }.count { |k, v| v > 2 }

Array.new(10) { rand(97..122) }.map { |num| num.chr }.tally # {"a"=>1, "g"=>2, "y"=>2, "u"=>2, "m"=>1, "t"=>1, "q"=>1}
