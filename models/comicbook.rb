require 'active_record'

class ComicBook < ActiveRecord::Base
	# Allows access to the information stored in the Database
	# validation is done here
	# validates_length_of :name, 5
	# attr_accessors are stored here
	# def initialze
	# has_many :comments
	# belongs_to :post
end
