x = "Course: "
puts x.object_id
x = x + "Rails"
puts x
puts x.object_id

puts ''

s = "Course: "
puts s.object_id
s << "Rails"
puts s
puts s.object_id

# << is better to don't create a new object_id