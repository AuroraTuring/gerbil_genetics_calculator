class InputHandler


  def launch
    puts Messages.welcome
    mothers_input = gets.chomp
    if !Gerbil.valid_color?(mothers_input)
      puts Messages.invalid
      return false
    end

    puts Messages.father
    fathers_input = gets.chomp
    if !Gerbil.valid_color?(fathers_input)
      puts Messages.invalid
      return false
    end

    puts Messages.babies
  end

end
