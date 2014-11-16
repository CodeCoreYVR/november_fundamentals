require "./cookie.rb"

class Oreo < Cookie
  attr_accessor :filling_type

  def initialize(sugar_amount, flour_amount, filling_type)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    @filling_type = filling_type
  end

  def details
    "I'm an Oreo cookie with #{filling_type}"
    super
  end

end
