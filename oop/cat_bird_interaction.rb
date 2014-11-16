load "./bird.rb"
load "./cat.rb"

bird = Bird.new "Tweetie", 10
cat  = Cat.new  "Silvestor", 9

cat.catch bird
cat.eat

bird = Bird.new "Tweetie 1", 10
cat  = Cat.new  "Silvestor 1", 19

cat.eat
cat.catch bird
cat.eat
