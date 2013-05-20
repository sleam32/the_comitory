class ComitoryController
  attr_accessor :params
  ACTIONS = "Actions: list, add, remove, quit"

  def initialize params
    @params = params
  end

  def add_comic
  clear_screen = "\e[H\e[2J"
  puts clear_screen
  puts "Add Your Comic!"
  comic_book = $stdin.gets.chomp
    comic = ComicBook.create(title: comic_book, publisher: comic_book, issue_number: comic_book)
  if comic.save
    puts "Comic Added!"
    puts ACTIONS
  else
    puts "The force field has been broken. Please try re-adding this comic."
  end
end


def list_comic
  clear_screen = "\e[H\e[2J"
  puts clear_screen
  puts "View Comic Collection"
  comics = ComicBook.all
  comics.each_with_index do |comic, i|
    unless comics.empty?
    puts "#{i+1}. #{comic.title}"
else
  puts "No comics have been added!"
  puts ACTIONS
  end
end


def remove_comic
  clear_screen = "\e[H\e[2J"
  puts clear_screen
  puts "Enter a comic you want to remove."
  matching_comic = ComicBook.where(title: comic_book, publisher: comic_book, issue_number: comic_book).all
  matching_comic.each do |comic|
  comic.destroy
  puts "Comic sucessfully removed!"
  puts ACTIONS
  end
end


def quit_all
    puts "\n\n<<< Goodbye! Keep Calm and Collect On! >>>\n\n"
  end
end
end