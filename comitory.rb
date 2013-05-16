# require 'rubygems'
# require 'bundler/setup'
# require 'active_record'
require_relative 'bootstrap_ar'

#!/usr/bin/env ruby
command = ARGV[0]

if command == "add"
project_name = ARGV[1]
Comicbook.create(title: project_name)
elsif command == "list"
	comics = Comicbook.all
	comics.each_with_index do |Comicbook, i|
		puts "{i + 1}. #{Comicbook.name}"
	end
elsif command == "remove"
	project_name = ARGV[1]
	Comicbook.where(title: project_name).all
end