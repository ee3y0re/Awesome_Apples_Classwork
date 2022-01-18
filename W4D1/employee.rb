# module Raiseable
#    def bonus(multiplier) 
#     @salary *= multiplier
#    end
# end

class Employee
    attr_reader :title, :boss
    attr_accessor :salary
    def initialize(name, title, salary, boss)
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary *= multiplier
    end
end