require "Nokogiri"
require "open-uri"

def list(user_list)
  if user_list.empty?
    puts "Your list is empty!"
  else
    user_list.each_with_index do |(key, value), index|
      puts "#{index + 1} - [#{value ? 'X' : ' '}] #{key}"
    end
  end
end

# add
# add item to user_list with value to false
def add(user_list)
  puts "What would you like to add?"
  product = gets.chomp.capitalize.to_sym

  if user_list.has_key?(product)
    puts "The #{product} already exists in your list! (Dumbass...)"
  else
    user_list[product] = false
    puts "The item #{product} has been added to your list!"
  end
end

def mark(user_list)
  puts "What would you like to mark as bought? (choose the number, please)"
  product = gets.chomp.to_i

  if user_list.has_key?(product)
    user_list[product] = true
    puts "The item #{product} has been marked as bought!"
  else
    puts "The item you selected does not exist"
  end
end

def delete(user_list)
  puts "Which product would you like to delete?"
  product = gets.chomp.capitalize.to_sym

  user_list.delete(product)
end

def etsy(user_list)
  puts "What are you looking for on Etsy?"
  article = gets.chomp
  articles = []
  file = open("https://www.etsy.com/search?q=#{article}")

  doc = Nokogiri::HTML(file)

  doc.search(".card-meta-row").each do |card|

    articles << card.text.strip
  end

  puts "Here are the Etsy results:"

  articles.each_with_index do |item, index|
    puts "#{index + 1} - #{item}"
  end

  puts "Pick one of the items to add to your list (please input the number)"
  item_number = gets.chomp.to_i

  user_list[articles[item_number - 1]] = false

  puts "The item has been added to your list!"
end
