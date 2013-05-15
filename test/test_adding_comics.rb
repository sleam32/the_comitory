

class TestAddingComicbook < Test::Unit::TestCase
  def test_takes_arguments_and_saves_them
    # start with no projects
    assert_equal Comicbook.count, 0
    # `ruby the_comitory add superman`
    Comicbook.create( name: 'superman' )
    # end up with a 'superman' comic
    assert_equal Comicbook.count, 1
  end
end