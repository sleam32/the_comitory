require_relative 'test_helper'

class TestListingComics < Test::Unit::TestCase

	def test_listing_when_there_are_no_comics
		assert ComicBook.all.empty?
		actual = `ruby comitory.rb list`
		assert_equal "", actual
	end

# 	def test_listing_multiple_comics
# 		ComicBook.create(title: 'foo')
# 		ComicBook.create(title: 'bar')
# 		actual = `ruby the_comitory list`
# 		expected = <<EOS
# 		1. foo
# 		2. bar
# EOS
#     	assert_equal expected, actual
#   	end
end