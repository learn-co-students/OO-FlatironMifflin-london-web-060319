require 'pry'

class Manager

    attr_reader :name, :department, :age  
    attr_accessor :employees
    @@all = []
    @@all_departments = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = [] 
        @@all << self
        @@all_departments << department
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all_departments
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary)
        @employees << employee
        employee
    end

    def self.average_age
        ages = self.all.map { |manager| manager.age}
        return ages.reduce { |sum, age| sum + age}/@@all.length
    end

end
