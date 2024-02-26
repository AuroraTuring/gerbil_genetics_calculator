class InputHandler


  def launch
    puts Messages.welcome
    mothers_input = gets.chomp
    #Class checks that color is valid
    Gerbil.valid_color?(mothers_input)

    puts Messages.father
    fathers_input = gets.chomp
    #Class checks that color is valid
    Gerbil.valid_color?(fathers_input)

    puts Messages.babies
  end

end
