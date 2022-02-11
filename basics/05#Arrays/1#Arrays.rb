# 2 ways to array declaration

a = [15, 62, 78, 102]
a.each do |element|
    puts element
end
# can access the data on array with index
puts a[3]

# OR
v = [] # OR v = Array.new
v.push('Isaac')
v.push('Arroz')  

puts v

/ IN RUBY, 
    you can mix data types to create a dinamic array /

# string is an array of character
s = "Isaac"
puts ''
puts s[0]
puts s[1]
puts s[2]
puts s[3]
puts s[4]



