module Computer
  class Apple
    def initialize(model)
      @model = model
    end
  end
end

class Fruit::Apple
  def initialize(type, color)
    @type, @color = type, color
  end
end

a = Computer::Apple.new "iMac"
b = Fruit::Apple.new "Gala", "Red"

