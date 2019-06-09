

class Employee

    attr_accessor :name, :salary, :manager_name

    @@all=[] 

    def initialize(name:, salary:, manager_name:)
        @name=name
        @salary=salary
        @manager_name=manager_name 
        @@all<<self 
    end 

    def self.all 
        @@all 
    end 

    def self.paid_over(number)
        @@all.select {|employees| employees.salary>number} 
    end 

    def self.find_by_department(department_name)
    departments=Manager.all.find {|managers| department_name=managers.department } 
    departments.employees 
    end 

    
    def tax_bracket 
    @@all.select {|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
    end     

end




