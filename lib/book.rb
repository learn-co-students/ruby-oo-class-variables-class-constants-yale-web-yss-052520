class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre #You still want to be able to read genre!

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # We will explicitly define our setter for genre because we want to add functionality not included in attr_accessor
  def genre=(new_genre)
    @genre = new_genre 
    GENRES << new_genre
  end 

end