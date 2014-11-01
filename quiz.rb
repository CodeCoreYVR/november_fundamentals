puts "How many sides does an hexagon have?"
puts "1. Five"
puts "2. Six"
puts "3. Seven"
print "Enter your answer: "

answer_1 = gets.chomp.to_i
score    = 0.0

if answer_1 == 2
  puts "Correct!"
  score += 1
else
  puts "Incorrect!"
end

puts "How to calculate the area of rectangle?"
puts "1. width * height"
puts "2. width / height"
puts "3. width + height"

answer_2 = gets.chomp.to_i

if answer_2 == 1
  puts "Correct!"
  score += 1
else
  puts "Incorrect!"
end

total_score = 100 * score / 2

puts "Total Score: #{total_score}%"


