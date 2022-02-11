/ Coerção (parses) /

puts "Enter your wage"

/ parse to integer /
wage = gets.chomp.to_i
puts wage.inspect

/ parse to float / 
wage = wage.to_f
puts wage.inspect

/ parse to string /
puts "Your new wage is: " + (wage * 1.14).to_s