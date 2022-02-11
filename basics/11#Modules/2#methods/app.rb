require_relative 'payment'
include Payment

puts "Type the flag of card: "
flag = gets.chomp
puts ""
puts "Type the number of card: "
number = gets.chomp
puts ""
puts "Type the purchase value: "
value = gets.chomp
puts ""
puts ""
puts pay(flag, number, value)
#puts Payment::pay(flag, number, value) /  IF NOT INCLUDE PAYMENT /
