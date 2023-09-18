class app
include BookLabelUtilities 

def show_options
    puts "Please choose an option by entering a number: 

    1- List all books
    2- List all labels"
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

def run
    puts "Welcome to our catalog of things"
    exit = false
    until exit
        show_options
        number = gets.to_i
end

