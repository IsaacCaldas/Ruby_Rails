/  
  print x puts:
    print = no wrap
    puts = wrap
/
print 'Enter a number: '
x = gets.chomp.to_i
if x > 2
  puts 'X é maior que 2'
end

# unless (if negativo) 
# unless
print 'Enter other number: '
x = gets.chomp.to_i

unless x >= 2
  puts 'x é menor que 2'
else
  puts 'x é maior que 2'
end
