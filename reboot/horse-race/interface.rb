require "pry-byebug"

horses = ["Carlos", "Filipe", "Maria", "Paulo"]

puts "-----Welcome to the Horse Race!-----"

loop do

  puts "These are the available horses today:"

  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end

  puts "Place your bet on one of the available horses:"

  bet = gets.chomp.capitalize

  puts "Horses are racing!!!"

  sleep(1)

  puts "They're really fast..."

  sleep(2)

  puts "Maybe not that fast..."

  sleep(3)

  puts "Almost there..."

  sleep(3)

  puts "And here..."

  sleep(1)

  puts "we"

  sleep(1)

  puts "go"

  sleep(1)

  race = horses.sample

  if bet == race
    puts "You've picked the right horse! You won!"
  else
    puts "Sorry, you've picked the wrong horse... #{race} was the right choice"
  end

  puts "Would you like to play again? [Y][N]"

  answer = gets.chomp.capitalize

break if answer == "N"
end

# while answer == "Y"
#   puts "Welcome to the Horse Race!

# Please place your bet on one the following horses:

# 1 - Carlos
# 2 - Filipe
# 3 - Maria
# 4 - Paulo"

#   bet = gets.chomp.capitalize

#   race = horses.sample

#   if bet == race
#     puts "You've picked the right horse! You won!"
#   else
#     puts "Sorry, you've picked the wrong horse... #{race} was the right choice"
#   end

#   puts "Would you like to play again? [Y][N]"

#   answer = gets.chomp
# end
