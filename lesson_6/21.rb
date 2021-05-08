require 'pry'

MAIN_DECK = {}
SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]
NON_ROYAL = ["2", "3", "4", "5", "6", "7", "8", "9", "10"]
ROYAL = { "Jack" => "10", "Queen" => "10", "King" => "10", "Ace" => "11" }

SUITS.each do |suit|
  NON_ROYAL.each do |num|
    clone = num + " of " + suit
    MAIN_DECK[clone.to_sym] = num.to_i
  end
  ROYAL.each do |k, v|
    clone = k + " of " + suit
    MAIN_DECK[clone.to_sym] = v.to_i
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

def initial_deal(stack, player, dealer)
  pull_card(stack, player)
  pull_card(stack, dealer)
  pull_card(stack, player)
  pull_card(stack, dealer)
end

def pull_card(stack, player)
  total = player.values.sum
  if stack[0].to_s.include?("Ace") && ((total + 11) > 21)
    player[stack[0]] = 1
  else
    player[stack[0]] = MAIN_DECK[stack[0]]
  end
  stack.shift
end

def display_cards(player, dealer, boolean=false)
  system "clear"
  prompt "Player cards:"
  puts player.keys.join(", ")
  puts "Total is #{player.values.sum}"
  puts ""
  prompt "Dealer cards:"
  puts dealer.keys.first.to_s + " and [hidden card]" if !boolean
  puts dealer.keys.join(", ") if boolean
  puts "Total is #{dealer.values.sum}" if boolean
  puts ""
end

def dealer_decision(player, dealer)
  player = player.values.sum
  dealer = dealer.values.sum

  if dealer > player
    true
  elsif player > 21
    true
  elsif dealer >= 17
    true
  else
    nil
  end
end

def evaluate_winner(player, dealer)
  player = player.values.sum
  dealer = dealer.values.sum

  if dealer > player && dealer < 22
    puts "Dealer won!"
  elsif player > 21
    puts "Dealer won!"
  elsif dealer == player
    puts "Push!"
  else
    puts "Player won!"
  end
end

loop do # begin game
  cards = MAIN_DECK.clone.keys.shuffle # shuffle deck of remaining cards
  player = {} # players deck
  dealer = {} # dealers deck

  initial_deal(cards, player, dealer)

  loop do # player turn
    display_cards(player, dealer)
    break if player.values.sum > 20
    prompt "Hit or Stay? (type 'h' or 's')"
    input = gets.chomp.downcase
    break unless input.start_with?('h')
    pull_card(cards, player)
  end

  loop do # dealer turn
    display_cards(player, dealer)
    # binding.pry
    break if dealer_decision(player, dealer)
    pull_card(cards, dealer)
  end

  display_cards(player, dealer, true)
  evaluate_winner(player, dealer)
  puts ""
  prompt "Play again? (type 'y' or 'n')"
  input = gets.chomp.downcase
  break unless input.start_with?('y')
end # end game

puts "Thanks for playing Blackjack (21)! Good-bye!"
