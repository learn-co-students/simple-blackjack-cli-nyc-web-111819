def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand()*11.to_i
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  firstRound = deal_card+deal_card
  display_card_total(firstRound)
  firstRound
end

def hit?(total)
  f = false
  while f == false
    prompt_user
    input = get_user_input
    if input == 'h'
      total+=deal_card
      f = true
    elsif input == 's'
      f = true
    else
      invalid_command
    end
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardtotal = initial_round
  while cardtotal < 21
    cardtotal = hit?(cardtotal)
    display_card_total(cardtotal)
  end
  end_game(cardtotal)
end
    
