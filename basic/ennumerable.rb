require 'open-uri'

# [ *(1..5).each{|n| n.odd?} ]
p (1..5).include? 3
[1, 2, 3, 4, 5].include?(3)                                         # true


boolean_array = Array.new(5) { rand > 0.5 }                         # [true, false, true, false, true]
boolean_array.all? { |val| val == true || val == false }      # true
[1, 2, 3].all? Integer
[1, 2, 3].any? Numeric
[1, 2, 3].any? { |num| num > 2 }                            # true
[1, 2, 3, 4, 5].one? { |num| num > 3 }                      # false

a1 = Array.new(10) { rand(10) }
a1.count { |num| num > 3 }      # 8
{ a: 1, b: 2, c: 3, d: 4 }.count { |k, v| v > 2 }   # 2

Array.new(10) { rand(97..122) }.map { |num| num.chr }.tally # {"a"=>1, "g"=>2, "y"=>2, "u"=>2, "m"=>1, "t"=>1, "q"=>1}

[*(1..10)].drop_while { |num| num < 6 }                     # [6, 7, 8, 9, 10]

(1..6).group_by { |i| i%2 == 0 }                          # {false=>[1, 3, 5], true=>[2, 4, 6]}
hash_to_group = {foo: 3, bar: 2, baz: 1}
hash_to_group.group_by { |key, value| value}      # {3=>[[:foo, 3]], 2=>[[:bar, 2]], 1=>[[:baz, 1]]}
hash_to_group.group_by { |key, value| key}        #  {:foo=>[[:foo, 3]], :bar=>[[:bar, 2]], :baz=>[[:baz, 1]]}




url = 'https://raw.githubusercontent.com/eneko/data-repository/master/data/words.txt'
words = URI::open(url).readlines
# Make chunks, one for each letter.
e = words.chunk {|word| word.upcase[0] } # => #<Enumerator: ...>
# Display 'A' through 'F'.
e.each {|c, words| p [c, words.length]; break if c == 'F' }