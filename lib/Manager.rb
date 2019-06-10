class Manager


attr_accessor :name, :department, :age

@@all = []

  def initialize(name:, department:, age:)
    @name = name
    @department = department
    @age = age
    @@all<< self
  end


  def self.all
    @@all
  end

  def employees

    Employee.all.select{|employee|employee.manager == self}

  end

  def hire_employee(name:, salary:)

    Employee.new(name: name, salary: salary, manager: self)

  end

  # * returns an `Array` of all the department names that every manager oversees
  def self.all_departments
        @@all.collect {|manager|manager.department}
  end

  def self.average_age

    # returns a `Float` that is the average age of all the managers
    ages = @@all.map{|manager|manager.age}
    ages.inject{|sum, age| sum + age} / @@all.length

  end






end
