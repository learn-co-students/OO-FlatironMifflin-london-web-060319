class Manager
  attr_accessor :name, :age, :department
  @@all = []

  def initialize(name:, age:, department:)
    @name = name
    @age = age
    @department = department
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
   Employee.all.select {|employee| employee.manager == self}
  end

  def hire_employee
    Employee.new(name: name, salary: salary, manager: self)
  end

  def self.all_departments
    @@all.map {|manager| manager.department}
  end

  def self.average_age
    ages = @@all.map{|manager| manager.age}
    ages.inject(:+) / ages.size.to_f
  end

end
