require 'active_record'

class ComicBook < ActiveRecord::Base
	# creating associations between Models
	validates :title, :presence => true
	validates :publisher, :presence => true
	validates :issue_number, :presence => true
end
