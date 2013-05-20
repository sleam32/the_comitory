#!/usr/bin/env ruby
require_relative 'app/controllers/comitory_controller'
require_relative 'bootstrap_ar'
database = ENV['COMITORY_ENV'] || 'development'
connect_to database

puts "\n\n<<< Welcome to The ComiTory >>>\n\n"
puts "This is an interactive Comic Book collection to help organize your comic stash!\n\n"

puts ComitoryController::ACTIONS


command = ARGV[0]
comic_name = ARGV[1]

# params = {command: ARGV[0], comic:{name: ARGV[1]}}
params = { command: command, comic: { name: comic_name } }
controller = ComitoryController.new(params)
routes = { "add" => :add_comic, "list" => :list_comic, "remove" => :remove_comic, "quit" => :quit_all }

# router:
if route = routes[command]
  controller.send route
else
  unless command == "help"
    puts "Comitory does not (yet?) support the '#{command}' command.\n\n"
  end
# if command == "add"
# 	controller.add_comic
# end

# if command == "list"
# 	controller.list_comic
# end

# if command == "remove"
# 	controller.remove_comic
# end

# if command == "quit"
# 	controller.quit_all
end



