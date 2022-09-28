module Z
    module A
        def a_msg
            puts "from A Module"
        end
    end

    module B
        def self.b_class
            puts "from B Module class method"
        end
        def b_instance
            puts "from B Module instance method"
        end
    end
end

class P

    include Z::A
    include Z::B

end