#!/usr/bin/env ruby
require_relative 'bootstrap_ar'


ACTIONS = "Actions: list, add, remove, quit"
clear_screen = "\e[H\e[2J"

	puts "\n\n<<< Welcome to The ComiTory >>>\n\n"
	puts "This is an interactive Comic Book collection to help organize your comic stash!\n\n"

	puts ACTIONS

   command = ARGV[0]

if command == "add"
	puts clear_screen
	puts "Add Your Comic!"
	comic_book = $stdin.gets.chomp
	comic = ComicBook.create(title: comic_book, publisher: comic_book, issue_number: comic_book)
	if comic.save
		puts "Comic Added!"
	else
		puts "The force field has been broken. Please try re-adding this comic."
end 

if command == "list"
	puts clear_screen
	puts "View Comic Collection"
	comics = ComicBook.all
	comics.each_with_index do |comicBook, i|
	unless comics.empty?
		puts "{i + 1}. #{ComicBook.title}"
else
	puts "No comics have been added!"
	puts ACTIONS
end

if command == "remove"
	puts clear_screen
	puts "Enter a comic you want to remove."
	matching_comic = ComicBook.where(title: title, publisher: publ, issue_number: issue_num).all
	matching_comic.each do |comic|
	comic.destroy
	puts "Comic sucessfully removed!"
	puts ACTIONS
end

if command == "quit"
	puts "\n\n<<< Goodbye! Keep Calm and Collect On! >>>\n\n"
end
end
end
end
end


