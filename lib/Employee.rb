class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name:, salary:, manager:)
        @@all << self
        @name = name
        @salary = salary
        @manager = manager
    end

    def manager_name
        # returns a String that is the name of their manager
        @manager.name
    end

    def self.all
        # returns an Array of all the employees
        @@all
    end

    def self.paid_over(value)
        # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
        @@all.select {|employee| employee.salary > value}
    end

    def self.find_by_department(department_name)
        @@all.select {|employees| employees.manager.department == department_name}
    end

    def tax_bracket
        # returns an Array of all the employees whose salaries are within $1000 (± 1000)
        # of the employee who invoked the method
        Employee.all.select { |employee| 
            employee.salary.between?(self.salary-1000, self.salary+1000) && employee != self }
    end


end
