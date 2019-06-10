# frozen_string_literal: true

class Manager
  attr_accessor(:name, :department, :age)
  attr_reader
  attr_writer

  @@all = []

  def initialize(name:, department:, age:)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select { |employee| employee.manager_name == @name }
  end

  def hire_employee(name:, salary:)
    new_employee = Employee.new(name: name, salary: salary, manager_name: @name)
  end

  def self.all_departments
    @@all.map(&:department)
  end

  def self.average_age
    ages = []
    @@all.each { | manager | ages << manager.age.to_f}
    return ages.sum / ages.count
  end

end
