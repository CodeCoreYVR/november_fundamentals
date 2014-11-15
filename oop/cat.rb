class Cat
  attr_reader :name, :speed, :caught_bird

  def initialize(name, speed)
    @name, @speed = name, speed
    @caught_bird  = nil
  end

  def catch(bird)
    if speed >= bird.speed
      puts "Caught a bird named #{bird.name}"
      @caught_bird = bird
    else
      puts "Missed a bird named #{bird.name}"
    end
  end

  def eat
    if @caught_bird
      puts "Cat #{name} eats bird named #{@caught_bird.name}"
      @caught_bird = nil
    else
      puts "No bird to eat"
    end
  end


end
