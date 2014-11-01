print "Give me your grade: "

grade = gets.chomp.to_i

if grade > 95
  puts "You're genius you got an A"
elsif grade > 80
  puts "You got a B"
elsif grade > 70
  puts "You got a C"
elsif grade > 60
  puts "You got a D"
else
  puts "You got an F"
end
  