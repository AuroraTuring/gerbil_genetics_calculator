class Gerbil
  attr_reader :color, :pattern, :gender

  def initialize(color, pattern, gender)
    @color = color
    @pattern = pattern
    @gender = gender # fixed, male or female
  end

  COLORS_LIST = %w[agouti lilac yellow_fox grey_agouti black]

  # colors must accept a space later
  def self.valid_color?(color)
    COLORS_LIST.include?(color)
  end

end
