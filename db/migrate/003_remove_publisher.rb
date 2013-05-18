class RemovePublisher < ActiveRecord::Migration
	change_table :comic_books do |t|
  t.remove :publisher
  t.string :publisher
  t.integer :issue_number
end
end