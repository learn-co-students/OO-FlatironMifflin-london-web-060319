require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new(name:"Fred Bloggs", department: "shredding", age: 52)
m2 = Manager.new(name:"Hank Schmidt", department: "filing", age: 54)
m3 = Manager.new(name:"Frank Sausage", department: "boxes", age: 53)

e1 = Employee.new(name: "Bert", salary: 15000, manager: m1)
e2 = Employee.new(name: "Herbert", salary: 14500, manager: m2)
e3 = Employee.new(name: "Jim", salary: 12000, manager: m1)

# binding.pry

# Manager methods
Manager.all
Manager.all_departments
Manager.average_age

m1.hire_employee(name: "Frank", salary: 20000)
m1.employees

# Employee methods
Employee.paid_over(500)
Employee.all
Employee.find_by_department("filing")

e1.manager_name
e1.tax_bracket




