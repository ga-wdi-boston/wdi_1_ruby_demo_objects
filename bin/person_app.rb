# This will "insert" the contents of the person.rb here
require_relative '../lib/person.rb'

tom = Person.new('Tom', 'Dyer', '06-02-1962')
jill = Person.new('Jill', 'Stein', '05-13-1987')

puts "tom's first name is #{tom.first_name}"
puts "jill's last name  is #{jill.last_name}"

# Using the setter method to change 
# tom's last name.
# tom.last_name=('Jones')
 tom.last_name = 'Jones'


# show me tom's last name
puts "tom's last name is #{tom.last_name}"


puts tom
puts tom.inspect

# Whats going to happen?
puts "tom's full name is #{tom.full_name}"
puts "tom's age is #{tom.age}"

msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

tom.current_smoker = true
msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

tom.married = true
msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

