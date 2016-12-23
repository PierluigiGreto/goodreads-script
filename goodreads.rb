require 'goodreads'
require 'yaml'

config = YAML.load_file("config.yaml")
config["config"].each { |key, value| instance_variable_set("@#{key}", value) }
client = Goodreads::Client.new(api_key: @api_key, api_secret: @api_secret)
shelf =  client.shelf(@user_id, @shelf)
books = shelf.books
for book in books
	puts book.book.title
	puts book.book.link
	puts book.book.image_url
	puts book
	  	for author in book.book.authors
		  puts author[1].name
		  break
		end
	  break
end


file = open("README.md", 'w')


file.write("###### My Readings\n")






file.write("___\n")
file.write("I used the script [goodreads-script](https://github.com/PierluigiGreto/goodreads-script)\n")
