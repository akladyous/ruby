
module Person
    def self.prepended(klass)
        puts "from module: prepended method #{klass}"
    end
    def self.inclueded(klass)
        puts klass.instance_methods
        puts "from module: included method into #{klass}"
    end
    def name
        puts "from module : name method into"
        # super
    end
end

class User
    prepend Person
    def name
        puts "from class - my name is Paolo"
    end
    
end

paolo = User.new
paolo.name