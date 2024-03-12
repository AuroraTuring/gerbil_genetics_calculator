class InputHandler

  def launch
    puts Messages.welcome
    mothers_input = false
    loop do
      mothers_input = gets.chomp
      if !Gerbil.valid_color?(mothers_input)
        puts Messages.invalid
      else
        break
      end
    end

    puts Messages.father
    fathers_input = false
    loop do
      fathers_input = gets.chomp
      if !Gerbil.valid_color?(fathers_input)
        puts Messages.invalid
      else
        break
      end
    end

    gerbil_momma = Gerbil.new(mothers_input, "base", :female)
    gerbil_pappa = Gerbil.new(fathers_input, "white belly", :male)
    calc1 = Calculator.new(gerbil_momma, gerbil_pappa)
    calc1.calculate_pups
  end

end
