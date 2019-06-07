class Manager
    attr_reader(:name, :department, :age)

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|emp| emp.manager_name == self.name}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.collect {|manager| manager.department}
    end

    def gather_age
        @@all.collect {|manager| manager.age}
    end

    def self.average_age
        gather_age.sum / gather_age.size.to_f
    end

end
