def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(the_card_total)
  puts "Your cards add up to #{the_card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(the_card_total)
  puts "Sorry, you hit #{the_card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(the_card_total)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    the_card_total += deal_card
  end
  return the_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  initial_round = the_card_total
  while the_card_total < 21
    the_card_total = hit?(the_card_total)
    the_card_total = display_card_total(the_card_total)
  end
  end_game(the_card_total)
end
    
