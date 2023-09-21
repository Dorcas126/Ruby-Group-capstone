require_relative '../classes/Book/book'
require 'colorize'

module BookModule
  def create_book(publisher, cover_state, publish_date)
    book = Book.new(publisher, cover_state, publish_date)
    @books << book
    save_book_to_file(@books)
  end

  def list_books
    if @books.empty?
      puts "\n"
      puts 'There are no books'.colorize(:red)
    else
      puts "\n"
      puts "Books List".colorize(:green)
      puts "-----------".colorize(:green)
      @books.each_with_index do |book, i|
        puts "#{i + 1}) Publisher:".colorize(:light_blue) + " #{book.publisher}, " +
             "Cover State:".colorize(:light_blue) + " #{book.cover_state}, " +
             "Published:".colorize(:light_blue) + " #{book.publish_date}"
      end
    end
  end

  def save_book_to_file(books)
    @book_data.save_books(books)
  end
end
