module Person
  def get_fullname(first_name, last_name)
    "first name : #{first_name} lastname: #{last_name}"
  end

  def self.capitalizeFirstName(string)
    string.upcase!
  end
end


class White
  include Person
  extend Person

  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

p1 = White.new("john", "doe")
puts p1.get_fullname(p1.first_name, p1.last_name)
