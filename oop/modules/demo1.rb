module Person
  attr_accessor :first_name, :last_name
  def get_fullname
    "first name : #{self.first_name} lastname: #{self.last_name}"
  end

  def self.capitalizeFirstName(string)
    string.upcase!
  end
end


class White
  include Person
  extend Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

p1 = White.new("john", "doe")
puts p1.get_fullname
puts Person.capitalizeFirstName "hello"