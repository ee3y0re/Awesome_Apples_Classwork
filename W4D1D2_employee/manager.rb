require_relative 'employee'
class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        @name = Employee.new(name, title, salary, boss)
        @employees = []
    end

    def m_bonus(emp_arr, multiplier)
        return employee.salary if @employees.nil?
        arr = []
        @employees.each do |em|
            if em.employees.nil?
                arr << em
            else
                arr += m_bonus(em.employees, multiplier)
            end
        end

        arr.sum *= multiplier
    end

    def add_employee=(employee)
        self.employees << employee
    end
end

