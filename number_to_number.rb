puts "Enter two numbers: "

a = gets.chomp.to_i
b = gets.chomp.to_i

if a < b
  a.upto(b) {|val| puts val }
else
  b.upto(a) {|val| puts val }
end
