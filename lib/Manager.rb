class Manager
  
  attr_accessor :employee, :department, :age
  
  @@all = []
  
  def initialize(name,department,age)
    @name = name
    @department = department
    @age = age
    @@all << self 
    
  end 
    #class methods
  def self.all 
    @@all 
  end 
  
  def self.all_departments
    Manager.all.map{|departments| departments.department}
  end 
  
  def self.average_age
    a = []
   a = Manager.all.map{|manager_data| manager_data.age }
   a.reduce(:+) / a.size.to_f
  end 


  def employees
  Employee.all.select{|data| data.manager_name == @name}
  end 

  def hire_employee(name,salary)
    employees.map{|employee| employee.self}
  end 

  
end
