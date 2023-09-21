require 'json'
require_relative '../classes/Music/genre'

class BookManager
  DATA_FOLDER = 'JSON/'.freeze

  def load_books
    return [] unless File.exist?("#{DATA_FOLDER}book.json")

    data = JSON.parse(File.read("#{DATA_FOLDER}book.json"))
    books = []
    data['Books'].map do |book_data|
      books << Book.new(book_data['publisher'], book_data['cover_state'], book_data['publish_date'])
    end
    books
  end

  def save_books(books)
    File.open("#{DATA_FOLDER}book.json", 'w') do |file|
      data = {
        'Books' => books.map do |book|
                     book_data = {
                       'publisher' => book.publisher,
                       'cover_state' => book.cover_state,
                       'publish_date' => book.publish_date
                     }

                     book_data
                   end
      }
      file.write(JSON.pretty_generate(data))
    end
  end
end
