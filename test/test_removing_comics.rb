require 'test_helper'

# class TestRemovingComic < Test::Unit::TestCase
# 	def test_remove_only_comic
# 		Comicbook.create (title: 'superman')
# 		`ruby the_comitory remove 'superman'`
# 		assert Comicbook.all.empty?
# 	end

# 	def test_remove_particular_comic
# 		Comicbook.create(title: 'a')
# 		Comicbook.create(title: 'b')
# 		Comicbook.create(title: 'c')
# 		assert !Comicbook.where(title: 'b').all.empty?
# 		`ruby the_comitory remove b`
# 		assert Comicbook.where(title: 'b').all.empty?
# 		#assert_equal 2, Comicbook.count
# 	end

# 	def test_remove_particular_comic_doesnt_remove_all
# 		assert Comicbook.all.empty?
# 		Comicbook.create(title: 'a')
# 		Comicbook.create(title: 'b')
# 		Comicbook.create(title: 'c')
# 		assert !Comicbook.where(title: 'b').all.empty?
# 		`ruby the_comitory remove b`
# 		# assert Comicbook.where(title: 'b').all.empty?
# 		assert_equal 2, Comicbook.count
# 	end
# end


