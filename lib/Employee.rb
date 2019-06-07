class Employee
    attr_reader(:name, :salary)
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager_name.name
    end

    def self.paid_over(paid)
        @@all.select {|emp| emp.salary > paid}
    end

    def self.find_by_department(depart)
        a = Manager.all.find {|manager| manager.department == depart}.name
        @@all.find {|emp| emp.manager_name == a}
    end

    def tax_bracket
        @@all.select do |emp|
            emp.salary.between?(self.salary - 1000, self.salary + 1000)
        end
    end


end
