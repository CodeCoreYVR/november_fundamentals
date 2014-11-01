print "What year is your car? "

year = gets.chomp.to_i

if year > 2013
  puts "Nice! new car"
elsif year > 2005
  puts "Not bad...most cars on the road are that old"
else
  puts "Yikes! how is that thing still running"
end
