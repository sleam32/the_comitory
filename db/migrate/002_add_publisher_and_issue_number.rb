class AddPublisherAndIssueNumber < ActiveRecord::Migration
	def change
		add_column :comic_books, :publisher, :issue_number
	end
end