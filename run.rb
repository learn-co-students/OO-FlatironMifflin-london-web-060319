require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Fede", "working", 28)
manager2 = Manager.new("Nick", "chillin", 28)
zowie = manager1.hire_employee("Zowie", 3000)
pippo = manager1.hire_employee("Pippo", 2000) 
callum = manager2.hire_employee("Callum", 4500)
carlos = manager2.hire_employee("Carlos", 200)



binding.pry
puts "done"
