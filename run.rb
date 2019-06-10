require_relative "lib/Manager"
require_relative "lib/Employee"
# require_relative "lib/department"
require 'pry'


#Test your code here

manager1 = Manager.new("brian", "arts", 100)
manager2 = Manager.new("Chloe", "Science", 45)

emp1 = Employee.new("Aaron", 19000, manager1)
emp2 = Employee.new("Scott", 20000, manager2)
emp3 = Employee.new("Ed", 100000, manager1)



binding.pry
puts "done"
