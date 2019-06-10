class Employee
  attr_accessor :manager_name, :salary
   
  #All class variables#
  @@all = []
    
    #initializes all class variables #
  def initialize (name,manager_name,salary)
    @name = name 
    @salary = salary
    @manager_name = manager_name
    @@all << self 
  end 
   
    #class Methods #
  def self.all
    @@all
  end 

  def self.paid_over(amount)
   Employee.all.select{|employee| employee.salary > amount }
   
  end 

  def self.find_by_department(department_name)
    Manager.all.select{|departments| departments.department == department_name}.first 
  end 
    
    #instance Method #
  def tax_bracket
    Employee.all.select{|employee|employee.salary < 1000}
  end 

end
