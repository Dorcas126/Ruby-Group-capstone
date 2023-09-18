require_relative 'classes/book'
require_relative 'classes/label'

class App
  def initialize
    @books = [] # Initialize an empty array for storing books
    @labels = [] # Initialize an empty array for storing labels
  end

  # Create a label and return it
  def create_label
    puts 'Enter the label title: '
    title = gets.chomp
    puts 'Enter the color: '
    color = gets.chomp

    label = Label.new(title, color) # Create a new label
    @labels.push(label) # Add the label to the labels array
    label # Return the created label
  end

  def create_book
    puts 'When was the book published?(dd-mm-yyyy): '
    publish_date = gets.chomp
    puts 'Enter publisher name: '
    publisher = gets.chomp
    puts 'What is the book cover state: '
    cover_state = gets.chomp

    book = Book.new(publish_date, publisher, cover_state) # Create a new book
    label = create_label # Call create_label to get the label object
    label.add_item(book) # Add the book to the label
    @books.push(book) # Add the book to the books array

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

  def show_options
    puts "Please choose an option by entering a number:

    1- List all books
    2- List all labels
    7- Create a book
    10- Exit"
  end

  def list_items(number)
    case number
    when 1
      list_books
    when 2
      list_labels
    end
  end

  def add_items(number)
    case number
    when 7
      create_book
    end
  end

  def pick_action(number)
    if number <= 6
      list_items(number)
    else
      add_items(number)
    end
  end

  def run
    puts 'Welcome to our catalog of things'
    exit = false
    until exit
      show_options
      number = gets.to_i
      if number < 10
        pick_action(number)
      elsif number == 10
        exit = true
        puts 'Thank you, see you soon bye!'
      else
        puts "Error friend, wrong input. Sorry, I don't make the rules ¯\\(ツ)/¯"
      end
    end
  end
end
