#!/usr/bin/env ruby
require_relative 'bootstrap_ar'
database = ENV['COMITORY_ENV'] || 'development'
connect_to database 


ACTIONS = "Actions: list, add, remove, quit"
clear_screen = "\e[H\e[2J"

	puts "\n\n<<< Welcome to The ComiTory >>>\n\n"
	puts "This is an interactive Comic Book collection to help organize your comic stash!\n\n"

	puts ACTIONS

command = ARGV[0]

# params = {command: ARGV[0], comic:{name: ARGV[1]}}
# controller = ComicsController.new(params)

# router:
if command == "add"
	puts clear_screen
	puts "Add Your Comic!"
	comic_book = $stdin.gets.chomp
	comic = ComicBook.create(title: comic_book, publisher: comic_book, issue_number: comic_book)
	if comic.save
		puts "Comic Added!"
		puts ACTIONS
	else
		puts "The force field has been broken. Please try re-adding this comic."
end 
end

if command == "list"
	puts clear_screen
	puts "View Comic Collection"
	comics = ComicBook.all
	comics.each_with_index do |comics, i|
	# unless comics.empty?
		puts "{i + 1}. #{ComicBook.name}"
# else
end
	puts "No comics have been added!"
	puts ACTIONS
end
# end

if command == "remove"
	puts clear_screen
	puts "Enter a comic you want to remove."
	matching_comic = ComicBook.where(title: comic_book, publisher: comic_book, issue_number: comic_book).all
	matching_comic.each do |comic|
	comic.destroy
	puts "Comic sucessfully removed!"
	puts ACTIONS
end
end

if command == "quit"
	puts "\n\n<<< Goodbye! Keep Calm and Collect On! >>>\n\n"
end
# end


