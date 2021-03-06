# This will "insert" the contents of the person.rb here
require_relative '../lib/insured_person.rb'

tom = InsuredPerson.new('Tom', 'Dyer', '06-02-1962')
jill = InsuredPerson.new('Jill', 'Stein', '05-13-1987')

puts "tom's first name is #{tom.first_name}"
puts "jill's last name is #{jill.last_name}"

tom.last_name = "Jones"
puts "tom's last name is #{tom.last_name}"

puts "tom's full name is #{tom.full_name}"

puts "tom is #{tom.age} years old."

puts "tom will die in the year #{tom.expected_death_year}"

tom.current_smoker = true
tom.married = true

msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured."
