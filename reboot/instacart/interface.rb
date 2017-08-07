# Pseudo-code
# 1. Print Welcome
puts "Welcome to Intacart!"
# 2. Define your store (what items are for sale?)
store = { "Kiwi" => 1.25, "Banana" => 0.5, "Mango" => 4.0, "Asparagus" => 9.0 }

puts "In our store today:"

store.each do |key, value|
  puts "#{key}: #{value}€"
end

# 3. Get items from the user (shopping)

bill = {}

loop do
  puts "Which item? (or quit to checkout)"

  order = gets.chomp.capitalize

  if order == store[key]
    bill.store(store[key], store[value])
    puts "The item has been added to your cart"
  elsif order == "Quit"
    puts "Proceeding to checkout"
  else
    puts "We do not have any of those items"
  end

break if order == "Quit"
end


# 4. Print the bill (checkout)
