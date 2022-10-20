module Z
    module A
        def a_msg
            puts "from A Module"
        end
    end

    module B
        def self.class_method
            puts "from B Module class method"
        end
        def instance_method
            puts "from B Module instance method"
        end
    end
end

class P
    include Z::A
    include Z::B
    extend  Z::B
end
p=P.new
p.instance_method

