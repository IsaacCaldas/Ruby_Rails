puts 'Whats your name?'
name = gets
puts "Welcome " + name
puts "====================="
puts name.inspect
puts "====================="
puts 'Whats your name? (with .chomp)'
name = gets.chomp 
puts "Welcome " + name
puts "====================="
puts name.inspect