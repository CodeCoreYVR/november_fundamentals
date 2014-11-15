("a").upto("z") { |x| puts x }
# is the same as doing:
("a").upto("z") do |x| 
  puts x
end