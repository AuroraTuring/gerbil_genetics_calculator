class Messages

  def self.welcome
    "Welcome! Please input the mother's color."
  end

  def self.father
    "Thank you! Now please input the father's color."
  end

  def self.invalid
    "Please type a color that matches the following list: #{Gerbil::COLORS_LIST.join(", ")}"
  end

  def self.babies
    "Here is a list of all possible pup colors for these parents:"
  end


end
