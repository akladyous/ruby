module Calc
    TAX = 0.15
    # module Y
    #     def self.msg
    #         puts Module.nesting.inspect
    #         puts TAX
    #         "some message"
    #     end
    # end

    def self.get_tax
        TAX
    end

    def self.module_method
        puts "tax is : #{TAX}"
    end

    def salary
        rand(100..150)
    end
    def zz
        rand(100..150)
    end



    class GetSalary
        TAX
    end

end

