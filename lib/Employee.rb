class Employee
  attr_accessor :name, :salary, :manager
  @@all = []

  def initialize(name:, salary:, manager:)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def manager_name
    @manager.name
  end

  def self.paid_over(paid)
    @@all.select {|employee| employee.salary > paid}
  end

  def self.find_by_department(dept)
    man_dept = Manager.all.select {|manager| manager.department == dept}
    @@all.find {|employee| employee.manager == man_dept}
  end

  def tax_bracket
    @@all.select {|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
  end

end
