require_relative "calculator"
require 'byebug'

puts "-----Hello user! Welcome to the calculator-----"

loop do

  puts "Enter the first number:"

  first_number = gets.chomp.to_i


  puts "Enter the second number:"
  second_number = gets.chomp.to_i


  puts "Choose operation [+][-][x][/]"

  operator = gets.chomp

  result = calculate(first_number, second_number, operator)

  puts "Result: #{result}"

  puts "Do you want to keep going? Yes or No"

  answer = gets.chomp.capitalize

break if answer == "No" || answer == "N"
end

# while answer == "Yes" || answer == "Y"
#   puts "Enter the first number:"

#   first_number = gets.chomp.to_i

#   puts "Enter the second number:"

#   second_number = gets.chomp.to_i

#   puts "Choose operation [+][-][x][/]"

#   operator = gets.chomp

#   puts "Result: #{calculate(first_number, second_number, operator)}"

#   puts "Do you want to keep going? Yes or No"

#   answer = gets.chomp
# #  until answer == "No"
# end
