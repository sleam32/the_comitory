require 'test_helper'


class TestAddingComicbook < Test::Unit::TestCase

  def test_takes_arguments_and_saves_them
    assert_equal 0, ComicBook.count
    ComicBook.create(title: "Superman")
    assert_equal 1, ComicBook.count
  end

  def test_takes_arguments_and_uses_them
    puts `ruby the_comitory add Superman`
    assert_equal 'Superman', ComicBook.last.title
  end


end