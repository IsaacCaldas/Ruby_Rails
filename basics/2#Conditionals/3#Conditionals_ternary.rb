# tenary conditional 

print "Enter a number: "
num = gets.chomp.to_i
oddOrEven = num % 2
num = num.to_s
puts (oddOrEven == 0 ? 'The num is Even.' : 'The num is Odd.')
