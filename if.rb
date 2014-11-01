print "Give me a number:"

number = gets.chomp.to_f

# if the number is greater than 100 it will print
# Large number.. otherwise it will print Small number..
if number > 100
  puts "Large number.."
elsif number > 10
  puts "Averge number.."
else
  puts "Small number.."
end
