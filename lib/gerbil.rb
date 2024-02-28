require "./spec/spec_helper"

class Gerbil
  COLORS_LIST = %w[agouti lilac yellow_fox grey_agouti black]

  attr_reader :color, :pattern, :gender

  def initialize(color, pattern, gender)
    @color = color if validate_color?(color)
    @pattern = pattern
    @gender = [:male, :female]
  end

  def validate_color?(color)
    if self.class.valid_color(color)
      return true
    else
      raise "Text here."
    end
  rescue StandardError
  end

  # colors must accept a space later
  def self.valid_color?(color)
    COLORS_LIST.include?(color)
  end

end
