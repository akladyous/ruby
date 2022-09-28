def seed
    puts "initializing new recors...."
    peoples = [
        {first_name: "hilda", last_name: "smith", age: 22},
        {first_name: "maria", last_name: "rossi", age: 33},
        {first_name: "alex", last_name: "medina", age: 28},
        {first_name: "john", last_name: "capri", age: 30},
        {first_name: "marc", last_name: "parini", age: 17},
    ]
    peoples.each{ |p|
        Person.new(p[:first_name], p[:last_name], p[:age])
    }
end

class Person
    attr_accessor :first_name, :last_name, :age
    @@all = []
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @@all << self
    end
        
    def self.all
        @@all
    end

    def self.instances
        ObjectSpace.each_object(self).to_a
    end

    def self.display_all_records
        @@all.each { |people|
            puts "name: #{people.first_name} last name: #{people.last_name} age: #{people.age} "
        }
    end

    def self.instance_by_name(name)
        ObjectSpace.each_object(self).to_a.find &:first_name == name
    end

    def self.upate_people_name(old_name, new_name)
        # instance = self.all.find{ |instance| instance.first_name == old_name }
        instance = ObjectSpace.each_object(self).to_a.find{|instance| instance.first_name == old_name}
        if !instance.nil?
            instance.update_name(new_name)
        else
            puts "name not found!"
            return nil
        end
        instance.print_attr
    end

    def print_attr
        puts "first name: #{self.first_name}"
        puts "last name: #{self.last_name}"
        puts "age: #{self.age}"
    end
    
    def update_name(new_name)
        self.first_name = new_name
    end

    def delete_instance(name)
        instance_by_name(name)
    end
end