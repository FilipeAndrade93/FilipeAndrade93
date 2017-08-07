require_relative "shop"
require "pry-byebug"
# Pseudo-code:

# 1. Welcome

# 2. Display menu (list / add / delete / mark )

# 3. Get user action

# 4. Perform the right action
# for each action call a method from shop

# end the loop
user_list = {}

puts "-----Welcome to your Christmas giftlist-----"

loop do

puts "Which action [list|add|mark|idea|delete|quit]?"

user_answer = gets.chomp.downcase

case user_answer
when "list"
  list(user_list)
when "add"
  add(user_list)
when "mark"
  mark(user_list)
when "idea"
  etsy(user_list)
when "delete"
  delete(user_list)
when "quit"
  puts "As you wish... Bye then"
else
  puts "Please insert a valid action... It's not rocket science"
end

break if user_answer == "quit"
end
