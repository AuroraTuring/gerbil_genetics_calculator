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
    puts Messages.babies
  end

end
