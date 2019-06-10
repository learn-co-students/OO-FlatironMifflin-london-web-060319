require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager = Manager.new("Aruna Kale","M&M", 38)
manager2 = Manager.new("Kelly Dobbins" ,"NHS",23)
manager3 = Manager.new("Anna" ,"finance", 24)
manager4 = Manager.new("Lee", "video", 30)
manager5 = Manager.new("Aruna1","agage",20)
Manager.all
Manager.all_departments
Manager.average_age

manager5.employees
manager3.hire_employee("rags3" , "salary")



employee1 = Employee.new("rags", "manager-1",1000)
employee2 = Employee.new("rags2","manager-1",1500)
employee3 = Employee.new("rags3","Aruna1",900)
employee4 = Employee.new("rags4","timepass3",2000)
employee5 = Employee.new("rags5","timepass3",1200)
employee6 = Employee.new("rags6","timepass4",800)
Employee.all
Employee.paid_over(1500)
Employee.find_by_department("M&M")
employee1.tax_bracket

binding.pry
puts "done"



