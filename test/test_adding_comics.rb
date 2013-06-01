require 'test_helper'


class TestAddingComicbook < Test::Unit::TestCase

  def test_takes_arguments_and_saves_them
    assert_equal 0, ComicBook.count
    `ruby comitory.rb add foo`
    assert_equal 1, ComicBook.count
  end

  def test_takes_arguments_and_uses_them
    `ruby comitory.rb add Superman`
    assert_equal 'Superman', ComicBook.last.title
  end

  def test_duplicate_names_outputs_error_message
  	ComicBook.create(title: 'Batman')
  	results = `ruby comitory.rb add Batman`
  	assert_equal results.include?('Name must be unique'), "Actually was '#{results}'"
  end
end