class Calculator
  attr_reader :gerbil_momma, :gerbil_pappa

  def initialize(gerbil_momma, gerbil_pappa)
    @gerbil_momma = gerbil_momma
    @gerbil_pappa = gerbil_pappa
  end

  def calculate_pups
    puts Messages.babies
  end



end
