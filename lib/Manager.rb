class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name:, department:, age:)
        @@all << self
        @name = name
        @department = department
        @age = age
    end

    def employees
        # returns an Array of all the employees that the manager oversees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        # returns an Array of all the managers
        @@all
    end

    def hire_employee(name:, salary:)
        # takes a String argument and a Fixnum argument of an employee's name and the employee's salary,
        # respectively, and adds that employee to the list of employees that the manager oversees
        Employee.new(name:name, salary:salary, manager: self)
    end

    def self.all_departments
        @@all.collect {|manager| manager.department}
    end

    def self.average_age
        age_tracker = 0
        @@all.each {|manager| age_tracker+=manager.age} 
        return (age_tracker / @@all.length).to_f
    end

end
