require "./spec/spec_helper"

class Gerbil
  COLORS_LIST = %w[agouti lilac yellow_fox grey_agouti black]

  attr_reader :color, :pattern, :gender

  def initialize(color, pattern, gender)
    @color = color
    @pattern = pattern
    @gender = gender # fixed, male or female
  end

  # colors must accept a space later
  def self.valid_color?(color)
    if COLORS_LIST.include?(color)
    else
      Messages.invalid
    end
  end

end
