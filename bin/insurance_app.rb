require_relative '../lib/insured_person.rb'

tom = InsuredPerson.new('Tom', 'Dyer', '06-02-1962')
jill = InsuredPerson.new('Jill', 'Stein', '05-13-1987')

puts "tom's first name is #{tom.first_name}"
puts "jill's last name  is #{jill.last_name}"

msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

tom.current_smoker = true
msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

tom.married = true
msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured"

# puts "Tom has #{tom.years_to_live} yrs to live"

jack = InsuredPerson.new('Jack', 'Sprat', '07-13-1987')
puts jack.inspect

