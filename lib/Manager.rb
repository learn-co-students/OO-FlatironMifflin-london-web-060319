# require "pry" 
class Manager

    attr_accessor :name, :employees, :department 
    attr_reader :age
    @@all=[] 

    def initialize(name:, employees:, department:, age:)
        @name=name
        @employees= employees 
        @department=department 
        @age= age
        @@all<<self 
    end 

    def self.all 
        @@all
    end 

    def self.hire_employee(name,salary)
        Employee.new(name:name, salary:salary, manager_name:self)
    end 

    def self.all_departments
    @@all.collect {|managers| managers.department}
    end 

    def self.average_age 
        all_ages= @@all.collect {|managers| managers.age}
        all_ages.inject{ |sum, el| sum + el }.to_f / all_ages.size
    end 
end
# binding.pry 
# 0 
