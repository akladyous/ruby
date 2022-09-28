def initialize_app 
    puts 'Working with Classes APP'
end 
def initialize_app
    menu
end 

def menu
    puts "Welcome to Flatiron Movies"
    puts "Please choose an option:"
    puts "1. Generate data"
    puts "2. Display peoples"
    puts "3. print attribute"
    puts "4. Create Person"
    puts "5. Update people record"
    puts "6. display instances"
    puts "0. to exit"
    
    user_input = gets.strip

    case user_input
        when "1"
            generate_data
        when "2"
            Person.display_all_records
            menu
        when "3"
            puts print_attr
        when "4"
            puts create_person
        when "5"
            puts update_record
        when "6"
            puts Person.instances
        else 
            puts "goodbye"
    end 
end 

def generate_data
    seed
    menu
end

def print_attr
    nil
end

def create_person
    puts "first name"
    first_name = gets.strip
    puts "last name"
    last_name = gets.strip
    puts "age"
    age = gets.strip

    Person.new(first_name, last_name, age)
    menu
end

def update_record
    puts "insert person name"
    old_name = gets.strip
    puts "insert person new name"
    new_name = gets.strip
    Person.upate_people_name(old_name, new_name)

    menu
end