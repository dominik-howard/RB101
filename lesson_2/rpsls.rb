def prompt(message)
  Kernel.puts("=> #{message}")
end

VALID_CHOICES = {
  'r': 'rock',
  'p': 'paper',
  'sc': 'scissors',
  'l': 'lizard',
  'sp': 'spock'
}

def print_choices(hash)
  hash.each do |abbreviation, choice|
    prompt("Type '#{abbreviation}' for '#{choice}'")
  end
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

# def print_grand_winner?(player, computer)
#   player_counter = 0
#   computer_counter = 0
#   if win?(player, computer)
#     player_counter += 1
#     puts "You are the Grand Winner!" if player_counter == 5
#   elsif win?(computer, player)
#     computer_counter += 1
#     puts "The Computer is the Grand Winner!" if computer_counter == 5
#   end

#   exit if (player_counter == 5 || computer_counter == 5)
# end

  
loop do
  choice = ''
  loop do
    print_choices(VALID_CHOICES)
    choice = Kernel.gets().chomp().downcase.to_sym

    if VALID_CHOICES.has_key?(choice)
      choice = VALID_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  prompt(display_results(choice, computer_choice))

  # player_counter = 0
  # computer_counter = 0

  # if display_results(choice, computer_choice) == "You won!"
  #   player_counter += 1
  # elsif display_results(choice, computer_choice) == "Computer won!"
  #   computer_counter += 1
  # end

  # if player_counter == 5
  #   puts "You are the Grand Winner!"
  #   exit
  # elsif computer_counter == 5
  #   puts "The Computer is the Grand Winner!"
  #   exit
  # end

  # print_grand_winner?(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
