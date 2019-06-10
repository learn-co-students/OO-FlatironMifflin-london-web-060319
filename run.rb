require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here



department1 = Department.new(name: "Department One")
department2 = Department.new(name: "Department Two")
department3 = Department.new(name: "Department Three")


manager1 = Manager.new(name: "Joe", department: department1, age: 30)
manager2 = Manager.new(name: "Jack", department: department2, age: 35)
manager3 = Manager.new(name: "Jim", department: department3, age: 40)


employee1 = Employee.new(name: "Tim", salary: 25000, manager_name: manager1)
employee2 = Employee.new(name: "Tom", salary: 20000, manager_name: manager2)
employee3 = Employee.new(name: "Ben", salary: 30000, manager_name: manager3)
employee4 = Employee.new(name: "Mike", salary: 20000, manager_name: manager1)
employee5 = Employee.new(name: "Sam", salary: 25000, manager_name: manager2)
employee6 = Employee.new(name: "Sarah", salary: 30000, manager_name: manager3)
employee7 = Employee.new(name: "Louise", salary: 25000, manager_name: manager1)
employee8 = Employee.new(name: "Amy", salary: 20000, manager_name: manager2)
employee9 = Employee.new(name: "Rachel", salary: 25000, manager_name: manager3)
employee10 = Employee.new(name: "David", salary: 30000, manager_name: manager1)



binding.pry
puts "done"
