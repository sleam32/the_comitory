class CreateComicbooks < ActiveRecord::Migration # Creating a table, adding it the DB
	def change
		create_table :comic_books do |t|
			t.string :title
		end
	end
end