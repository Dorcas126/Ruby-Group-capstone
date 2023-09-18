require_relative 'utilities/book_label_utilities'

class App
  include BookLabelUtilities

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

  def save_data
    save_books
    save_labels
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
        save_data
        puts 'Thank you, see you soon bye!'
      else
        puts "Error friend, wrong input. Sorry, I don't make the rules ¯\\(ツ)/¯"
      end
    end
  end


end
