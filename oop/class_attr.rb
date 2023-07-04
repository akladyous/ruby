class Test
    attr_accessor :age
    @@all = []
    @@numbers = ['one', 'two', 'three', 'four', 'five', 'six']
    def initialize(options = {})
        @age = options[:age] || 20
        @@all << self
    end
    def self.get_instances
        @@all
    end
    def self.numbers
        @@numbers
    end
    def self.numbers=(numbers)
        return unless numbers.is_a?(Array)
        @@numbers = numbers
    end
end
x = Test.new({name: 'paul' })
puts x.age

Test.numbers.each{ |num| puts num }

puts Test.numbers
puts Test.get_instances
# Test.numbers = [1,2,3,4]
puts Test.numbers
