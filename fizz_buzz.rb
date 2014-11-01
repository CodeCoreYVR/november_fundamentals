# a = 1

# while a <= 100
#   unless a % 3 == 0 then puts "FIZZ" end
#   unless a % 5 == 0 then puts "BUZZ" end
#   unless a % 3 == 0 && a % 5 == 0 then puts "FIZZBUZZ" end
#   a += 1
# end

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    puts "FIZZBUZZ"
  elsif number % 3 == 0 
    puts "FIZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  else
    puts number
  end
end

