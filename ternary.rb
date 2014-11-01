print "Give me a number: "

a = gets.chomp.to_i

if a > 10
  puts "Large Number"
else
  puts "Small Number"
end

puts a > 10 ? "Large Number" : "Small Number"