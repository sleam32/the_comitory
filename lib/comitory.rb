#!/usr/bin/env ruby
require_relative 'app/controllers/comitory_controller'
require_relative 'bootstrap_ar'
database = ENV['COMITORY_ENV'] || 'development'
connect_to database

puts intro = <<EOS
_______  __   __  _______    _______  _______  __   __  ___   _______  _______  ______    __   __
|       ||  | |  ||       |  |       ||       ||  |_|  ||   | |       ||       ||    _ |  |  | |  |
|_     _||  |_|  ||    ___|  |       ||   _   ||       ||   | |_     _||   _   ||   | ||  |  |_|  |
|   |  |       ||   |___   |       ||  | |  ||       ||   |   |   |  |  | |  ||   |_||_ |       |
|   |  |       ||    ___|  |      _||  |_|  ||       ||   |   |   |  |  |_|  ||    __  ||_     _|
|   |  |   _   ||   |___   |     |_ |       || ||_|| ||   |   |   |  |       ||   |  | |  |   |
|___|  |__| |__||_______|  |_______||_______||_|   |_||___|   |___|  |_______||___|  |_|  |___|
EOS
puts "\n\n<<< Welcome to The ComiTory, an interactive Comic Book collection to organize your comic stash! >>>\n\n"
puts "To get started, choose an action: Add, List, Remove, Quit"

ComitoryController::ACTIONS


command = ARGV[0]
comic_name = ARGV[1]

params = { command: ARGV[0], comic:{ comic_name: ARGV[1] } }
controller = ComitoryController.new(params)

if command == "add"
  controller.add_comic
end

if command == "list"
  controller.list_comic
end

if command == "remove"
  controller.remove_comic
end

if command == "quit"
  controller.quit_all
end



