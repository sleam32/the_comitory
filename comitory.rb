#!/usr/bin/env ruby
require_relative 'bootstrap_ar'


ACTIONS = "Actions: list, add, remove, find, quit"
clear_screen = "\e[H\e[2J"


	puts "\n\n<<< Welcome to The ComiTory >>>\n\n"
	puts "This is an interactive Comic Book collection to help organize your comic stash!\n\n"

	puts ACTIONS

command = ARGV[0]

if command == "add"
	puts clear_screen
	i = 1
	until i > 5
	# flag = true
	# while flag
	puts "Want to add a comic to your collection? [y/n]:"
	response = $stdin.gets.chomp
	case response
	when 'y'
	puts "Please enter a Title:"
	response = $stdin.gets.chomp
	puts "Please enter a Publisher:"
	response = $stdin.gets.chomp
	puts "Please enter an Issue Number:"
	response = $stdin.gets.chomp
	puts "New Comic Added!"
	response = $stdin.gets.chomp
	i += 1
# end

	when 'n'
	# # flag = false
		puts "Ok, what would you like to do?"
		puts ACTIONS
	# puts "Please enter Publisher:"
	# publ = "Please enter Publisher".chomp
	# puts "Please enter Issue Number:"
	# issue_num = "Please enter Issue Number".chomp
	# ComicBook.create(title: title, publisher: publ, issue_number: issue_num)
	# on final enter, clear the screen
	# puts clear_screen
	# puts "Comic Added!"
	# puts ACTIONS
end
if command == "list"
	puts "Your comic collection!"
	comics = ComicBook.all
	comics.each_with_index do |comicBook, i|
	puts "{i + 1}. #{ComicBook.title.publ.issue_num}"
	puts ACTIONS
	end
elsif command == "remove"
	comic_book = ARGV[1]
	matching_comic = ComicBook.where(title: title, publisher: publ, issue_number: issue_num).all
	matching_comic.each do |comic|
	comic.destroy
	puts ACTIONS
	end
elsif command == "find"
	puts "Find a Comic\n"
	puts "Find using a key phrase to search the comic collection list.\n"
	puts "Examples: find Superman, find Super\n"
	puts ACTIONS
elsif command == "quit"
	puts "\n\n<<< Goodbye! Keep Calm and Collect On! >>>\n\n"
end
end
end



