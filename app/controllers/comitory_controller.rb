class ComitoryController
  attr_accessor :params
  ACTIONS = "Actions: list, add, remove, quit"

  def initialize params
    @params = params
  end

  def add_comic
    clear_screen = "\e[H\e[2J"
    puts clear_screen
    puts "Add a title."
    title = $stdin.gets.chomp
    puts "Add a publisher."
    publisher = $stdin.gets.chomp
    puts "Add an issue number."
    issue_number = $stdin.gets.chomp
    comic = ComicBook.create(title: title, publisher: publisher, issue_number: issue_number)
    if comic.save
      puts "Holy Jack in the box! Comic Added!"
      puts ACTIONS
    else
      puts "I'm through talking. Get out of my cave. Please try re-adding this comic."
    end
  end


  def list_comic
    clear_screen = "\e[H\e[2J"
    puts clear_screen
    puts "View Comic Collection"
    comics = ComicBook.all
    comics.each_with_index do |comic, i|
      unless comics.empty?
        puts "#{i+1}. #{comic.title.ljust(40)} | #{comic.publisher.ljust(40)}" +
        " | #{comic.issue_number.to_s.ljust(10)}"
      else
        puts "Puny humans. No comics have been added!"
        puts ACTIONS
      end
    end
  end


  def remove_comic
    clear_screen = "\e[H\e[2J"
    puts clear_screen
    puts "Enter a comic you want to remove."
    comic_book = $stdin.gets.chomp
    matching_comics = ComicBook.where(title: comic_book).all
    matching_comics.each do |comic|
      if comic.destroy
        puts "Holy haberdashery, Batman!! Comic sucessfully removed!"
      else
        puts "Hulk smash!! Removal failed. Try again."
        puts ACTIONS
      end
    end
  end


  def quit_all
    clear_screen = "\e[H\e[2J"
    puts clear_screen
    puts "\n\n<<< With great power comes great responsibilty. Goodbye! >>>\n\n"
  end
end
