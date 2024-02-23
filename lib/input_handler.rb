class InputHandler



  # def receive_input
    # wait for user input
    # Class checks if input is valid
  # end



def launch
  puts Messages.welcome
  # receives mother's input
  mothers_input = gets.chomp
  # is mother's input valid

  # check against color list
  gerbil.valid_color?
  # puts Messages.pattern
  # receive father's input
  fathers_input = gets.chomp
  # puts Messages.possible_babies
end



end
