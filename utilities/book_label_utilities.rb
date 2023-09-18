require_relative '../class/book'
require_relative '../class/label'

module BookLabelUtilities
  def initialize
    @books = []
    @labels = []
  end

  def create_label
    puts 'Enter the label title: '
    title = gets.chomp
    puts 'Enter the color: '
    color = gets.chomp

    label = Label.new(title, color)
    @labels.push(label)
    label
  end

  def create_book
    puts 'When was the book published?(dd-mm-yyyy): '
    publish_date = gets.chomp
    puts 'Enter publisher name: '
    publisher = gets.chomp
    puts 'What is the book cover state: '
    cover_state = gets.chomp

    book = Book.new(publish_date, publisher, cover_state)
    label = create_label
    label.add_item(book)
    @books.push(book)

    puts 'Book has been created successfully'
  end

  def list_books
    if @books.empty?
      puts 'Book list is empty'
    else
      @books.each_with_index do |book, index|
        puts "#{index}
                  ID: #{book.id}
                  publish_date: #{book.publish_date}
                  cover_state: #{book.cover_state}"
      end
    end
  end

  def list_labels
    if @labels.empty?
      puts 'Label list is empty'
    else
      @labels.each_with_index do |label, index|
        puts "#{index}
                  ID: #{label.id},
                  title: #{label.title},
                  color: #{label.color}\n"
      end
    end
  end

  def save_books
    return unless @books.any?

    books_data = JSON.generate(@books, {max_nesting: false})
    if File.exist?("../storage/books.json")
        File.write("../storage/books.json", books_data)
    else
        File.write("../storage/books.json", books_data, mode: "w+")
  end

  def save_labels
    return unless @labels.any?

    labels_data = JSON.generate(@labels, {max_nesting: false})
    if File.exist?("../storage/labels.json")
        File.write("../storage/labels.json", labels_data)
    else
        File.write("../storage/labels.json", labels_data, mode: "w+")
  end
end
