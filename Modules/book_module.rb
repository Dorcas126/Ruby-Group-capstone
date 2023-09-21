require_relative '../classes/Book/book'

module BookModule
  def create_book(publisher, publish_date, cover_state)
    book = Book.new(publisher, publish_date, cover_state)
    @books << book
    save_book_to_file(@books)
  end

  def list_books
    if @books.empty?
      puts 'Book list is empty'
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}) Publisher: #{book.publisher}, Cover state: #{book.cover_state}, Published: #{book.publish_date}"
      end
    end
  end

  def save_book_to_file(books)
    @book_data.save_books(books)
  end
end
