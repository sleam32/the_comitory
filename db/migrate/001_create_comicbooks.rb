class CreateComicbooks < ActiveRecord::Migration # Adding data to the database
	def change
		create_table :comic_books do |t|
			t.string :title
		end
	end
end