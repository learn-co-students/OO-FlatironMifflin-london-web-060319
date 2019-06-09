class Employee

    attr_reader :name, :salary
    @@all = []
    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        my_manager = Manager.all.find do |manager|
            manager.employees.include?(self)
            return manager.name
        end
        return my_manager
    end 

    def self.paid_over(amount)
        @@all.select {|employee| employee.salary > amount}
        
    end

    def self.find_by_department(dept)
        my_manager = Manager.all.find do |manager| 
            manager.department == dept
        end
        return my_manager.employees[0]
    end

    def tax_bracket
        @@all.select { |employee| employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000 }
    end
end
