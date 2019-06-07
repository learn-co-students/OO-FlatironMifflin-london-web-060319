require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


tom = Manager.new("Tom", "Science", 56)
federica = Manager.new("Federica", "Math", 60)
aruna = Manager.new("Aruna", "Science", 25)

linh = tom.hire_employee("Linh", 45000)
quinn = federica.hire_employee("Quinn", 19000)
vu = aruna.hire_employee("Vu", 90000)
an = aruna.hire_employee("An", 18000)




binding.pry
puts "done"
