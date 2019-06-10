require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
emp1 = Employee.new(name: "Jason", salary: 25000, manager_name: "Viola")
emp6 = Employee.new(name: "Kimmy", salary: 25800, manager_name: "Viola")
emp2 = Employee.new(name: "Lucy", salary: 27000, manager_name: "Pablo")
emp3 = Employee.new(name: "Victor", salary: 32000, manager_name: "Viola")
emp4 = Employee.new(name: "Logan", salary: 23400, manager_name: "Pablo")
emp5 = Employee.new(name: "Daphne", salary: 30500, manager_name: "Pablo")
man1 = Manager.new(name: "Viola", department: "Marketing", age: 34)
man2 = Manager.new(name: "Pablo", department: "HR", age: 29)

binding.pry
puts "done"
