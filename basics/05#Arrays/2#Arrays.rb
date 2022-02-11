# you can have arrays in arrays
a = [[1,4,7], [2,5,8], [3,6,9]]
puts a
puts ''
a.each do |ext|
    ext.each do |ine|
        puts ine
    end
end