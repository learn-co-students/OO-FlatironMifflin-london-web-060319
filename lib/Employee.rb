class Employee

  attr_reader :name
  attr_accessor :salary, :manager_name

  @@all = []

  def initialize(name:, salary:, manager_name:)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(num)
    @@all.select{|employee|employee.salary > num}
  end
      # * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount

  def self.find_by_department(department_name)
    @@all.select{|employee|employee.manager_name.department == department_name}.first
  end
  #takes a `String` argument that is the name of a department and
  # returns the first employee whose manager is working in that department

  def tax_bracket

    @@all.select{|employee|employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000}

  end

  #returns an `Array` of all the employees whose salaries are within $1000 (± 1000)
   # of the employee who invoked the method



end
