VALID_CHOICES = {
  'r': 'rock',
  'p': 'paper',
  'sc': 'scissors',
  'l': 'lizard',
  'sp': 'spock'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def print_choices(hash)
  hash.each do |abbreviation, choice|
    prompt("Type '#{abbreviation}' for '#{choice}'")
  end
end

def win?(first, second, hash)
  hash[first.to_sym].include?(second)
end

OUTCOMES = {
  rock: ["scissors", "lizard"],
  paper: ["rock", "spock"],
  scissors: ["paper", "lizard"],
  lizard: ["spock", "paper"],
  spock: ["rock", "scissors"]
}

def display_results(player, computer, hash)
  if win?(player, computer, hash)
    "You won!"
  elsif win?(computer, player, hash)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def grand_winner?(counter1, counter2)
  if counter1 == 5
    puts "You are the grand winner!"
    exit
  elsif counter2 == 5
    puts "The computer is the grand winner!"
    exit
  end
end

player_counter = 0
computer_counter = 0

loop do # main loop
  choice = ''
  loop do
    print_choices(VALID_CHOICES)
    choice = Kernel.gets().chomp().downcase.to_sym

    if VALID_CHOICES.key?(choice)
      choice = VALID_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  prompt(display_results(choice, computer_choice, OUTCOMES))

  if display_results(choice, computer_choice, OUTCOMES) == "You won!"
    player_counter += 1
  elsif display_results(choice, computer_choice, OUTCOMES) == "Computer won!"
    computer_counter += 1
  end

  grand_winner?(player_counter, computer_counter)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end # end main loop

prompt("Thank you for playing. Goodbye!")
