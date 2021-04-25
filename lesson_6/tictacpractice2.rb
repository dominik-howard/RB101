require 'pry'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

WINNING_ROWS = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9],
  [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]
]

board = {
  1 => INITIAL_MARKER,
  2 => INITIAL_MARKER,
  3 => INITIAL_MARKER,
  4 => INITIAL_MARKER,
  5 => INITIAL_MARKER,
  6 => INITIAL_MARKER,
  7 => INITIAL_MARKER,
  8 => INITIAL_MARKER,
  9 => INITIAL_MARKER
}

def display_board(brd)
  system "clear"
  puts ""
  puts "You are 'X'. Computer is 'O'"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
end

def empty_squares?(brd)
  brd.select { |_, v| v == INITIAL_MARKER }.keys
end

def joinor(brd, delimiter=", ", conjuction=" or ")

  case brd.length
  when 2 then brd.join(conjuction)
  when 1 then brd.join
  else
    brd = brd.join(delimiter)
    brd[-1] = conjuction + brd[-1]
    brd.squeeze
  end

end

def player_choice!(square, brd)
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)

  if brd.values_at(*line).count(marker) == 2
    brd.select do |k,v|
      line.include?(k) && v == INITIAL_MARKER
    end.keys.first
  else
    nil
  end
end

def computer_choice!(empty_square, brd)
  square = nil

  if empty_squares?(brd).include?(5)
    square = 5
  end

  if !square # attack
    WINNING_ROWS.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  if !square # defend
    WINNING_ROWS.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square # random
    square = empty_square.sample
  end

  brd[square] = COMPUTER_MARKER
end

def determine_winner(brd, rows)
  player_rows = rows.map do |sub|
    sub.all? do |value|
      brd[value] == PLAYER_MARKER
    end
  end

  # binding.pry

  computer_rows = rows.map do |sub|
    sub.all? do |value|
      brd[value] == COMPUTER_MARKER
    end
  end

  if player_rows.any?
    "Player won!"
  elsif computer_rows.any?
    "Computer won!"
  elsif brd.value?(INITIAL_MARKER) == false
    "It's a tie!"
  else
    nil
  end
end

def reset_board(brd)
  brd = brd.each { |k, _| brd[k] = INITIAL_MARKER }
end

def display_score(player, computer)
  "Your score: #{player} | Computer score: #{computer}"
end

p_score = 0
c_score = 0
puts "Welcome to TicTacToe!"

loop do # <------------------------------------ main loop
  reset_board(board)
  display_board(board)

  loop do # <---------------------- game loop

     # computer's turn
     computer_choice!((empty_squares?(board)), board)
     display_board(board)
 
     if determine_winner(board, WINNING_ROWS) # if true
       if determine_winner(board, WINNING_ROWS) == "Player won!"
         p_score += 1
       elsif determine_winner(board, WINNING_ROWS) == "Computer won!"
         c_score += 1
       end
       display_board(board)
       p determine_winner(board, WINNING_ROWS)
       break
     end

        # player's turn
    loop do
      puts ""
      puts display_score(p_score, c_score)
      puts ""
      puts "Choose an available square: #{joinor(empty_squares?(board))}"
      input = gets.chomp.to_i
      if empty_squares?(board).include?(input)
        player_choice!(input, board)
        break
      else
        puts "Invalid choice!"
      end
    end

    if determine_winner(board, WINNING_ROWS) # if true
      if determine_winner(board, WINNING_ROWS) == "Player won!"
        p_score += 1
      elsif determine_winner(board, WINNING_ROWS) == "Computer won!"
        c_score += 1
      end
      display_board(board)
      p determine_winner(board, WINNING_ROWS)
      break
    end

    
  end # <-------------------------- end game loop

  if p_score == 5
    puts "You won 5 games! Game over!"
    break
  elsif c_score == 5
    puts "Computer won 5 games! Game over!"
  end
  
  puts "Play again? (type 'y' or 'n')"
  input = gets.chomp
  break unless input.downcase.start_with?("y")
end # <--------------------------------------- end main loop

puts "Thanks for playing! Goodbye!"
