print "Enter a number: "

number = gets.chomp.to_i

a = 1

until a > 10
  puts a * number
  a += 1
end
