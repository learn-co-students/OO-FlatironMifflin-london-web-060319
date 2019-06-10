class Employee
    attr_accessor :name, :salary, :manager
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        all.select{|employee|employee.salary > amount}
    end

    def self.find_by_department(department)
        all.find{|employee| employee.manager.department == department}
    end

    def tax_bracket
        mySalary = self.salary
       lower_salary = mySalary - 1000
       higher_salary = mySalary + 1000
       Employee.all.select {|employee| employee.salary >= lower_salary && employee.salary <= higher_salary} 
    end
end
