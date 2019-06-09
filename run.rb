require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new(name: "Michael", age: 42, department: "Paper")
andy = Manager.new(name: "Andy", age: 35, department: "Stanton")

jim = Employee.new(name: "Jim", salary: 2500, manager: michael)
dwight = Employee.new(name: "Dwight", salary: 2000, manager: michael)
pam = Employee.new(name: "Pam", salary: 1500, manager: andy)

binding.pry
puts "done"
