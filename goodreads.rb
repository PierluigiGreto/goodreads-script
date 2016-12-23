require 'goodreads'
require 'yaml'

config = YAML.load_file("config.yaml")
config["config"].each { |key, value| instance_variable_set("@#{key}", value) }
client = Goodreads::Client.new(api_key: @api_key, api_secret: @api_secret)
shelf =  client.shelf(@user_id, @shelf)
books = shelf.books

file = open("README.md", 'w')

file.write("###### My Readings\n")


for book in books
	title = book.book.title
	link =  book.book.link
	image = book.book.image_url
	file.write("- ![My image](#{image})[#{title}](#{link}) - ")
	  	for author in book.book.authors
		  file.write(author[1].name)
		end
	file.write("\n")
end

file.write("___\n")
file.write("I used the script [goodreads-script](https://github.com/PierluigiGreto/goodreads-script)\n")
