class Rectangle
  attr_accessor :width, :height
  attr_reader   :area

  def initialize(width, height)
    @width, @height = width, height
    @area           = width * height
  end

  # def area
  #   width * height
  # end

end
