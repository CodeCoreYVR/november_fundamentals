class Cookie

  def initialize(sugar_amount, flour_amount, chip_count)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    @@chip_count  = chip_count
  end

  # getter method
  # def sugar_amount
  #   @sugar_amount
  # end
  attr_reader :sugar_amount

  # setter method
  # def sugar_amount=(new_amount)
  #   @sugar_amount = new_amount
  # end
  attr_writer :sugar_amount

  
  # attr_reader :flour_amount
  # attr_writer :flour_amount
  attr_accessor :flour_amount



  def details
    "Deatils: #{@sugar_amount}g of sugar | 
              #{@flour_amount}g of flour | 
              #{@@chip_count} Chips"
  end

  def self.info
    puts "I'm a cookie class"
  end

  def eat
    puts "Eating a cookie with #{@sugar_amount} g of sugar"
  end

  def bake_n_eat
    bake
    eat
  end

  private

  def bake
    puts "I'm baking.."
  end

end
