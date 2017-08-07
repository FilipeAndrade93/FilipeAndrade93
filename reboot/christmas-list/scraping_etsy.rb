require "open-uri"
require "nokogiri"

puts "What are you searching on Etsy?"
article =gets.chomp

file = open("https://www.etsy.com/search?q=#{article}")

doc = Nokogiri::HTML(file)

doc.search(".card").each do |card|

  title = card.search(".card-title").text.strip
  puts title
end
