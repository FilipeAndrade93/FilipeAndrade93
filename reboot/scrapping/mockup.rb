require "nokogiri"
require "open-uri"

# elems = []

# file = open("https://dribbble.com/")
# doc = Nokogiri::HTML(file)
# doc.search("img").each do |el|
#   elems << el.attributes.text
# end
# p elems
# filtered = elems.map {|a| a.downcase }.reject(&:empty?)

# puts "Please choose one:"

# p filtered
# product = gets.chomp

def scrape_dribble_image()
  images = []

  doc = Nokogiri::HTML(open('https://dribbble.com/'))

  doc.search('.dribbble-link').each do |element|
    images << element["href"]
  end

  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

  filepath    = 'output.csv'

  CSV.open(filepath, 'wb', csv_options) do |csv|
    #
    csv << images
  end
end

p scrape_dribble_image
