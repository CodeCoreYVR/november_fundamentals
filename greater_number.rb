print "Give me a number"

number_1 = gets.chomp.to_i

print "Give me another number"

number_2 = gets.chomp.to_i

if number_1 == number_2
  puts "the two numbers are the same"
elsif number_1 > number_2
  puts "#{number_1} is larger"
else
  puts "#{number_2} is larger"
end
