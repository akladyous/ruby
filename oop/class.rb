require_relative "./module.rb"
# 
class Test
    p self.ancestors
    include Calc
    p self.ancestors

    def self.class_method
        puts "from class method"
    end

    def prova
        salary
    end

    def calc_tax
        total = salary
        tax = Calc::TAX
        "Salary: #{total} + Tax: #{tax} = #{total * tax}"
    end
end
