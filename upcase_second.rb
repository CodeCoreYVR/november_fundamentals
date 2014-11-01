counter  = 1
sentence = ""

while true
  puts "Give me a word: "
  word = gets.chomp
  break if word == "quit"
  word.upcase! if counter.even?
  sentence = sentence + word + " "
  counter += 1
end

puts sentence
