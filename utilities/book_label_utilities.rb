require_relative '../classes/book'
require_relative '../classes/label'

module BookLabelUtilities 
def create_label
p "Enter the label title: "
title = gets.chomp
p "Enter the color: "
color = gets.chomp

Label.new(title, color)
end

def create_book
    p "When was the book publish?(dd-mm-yyyy): "
    publish_date gets.chomp
    p "Enter publisher name: "
    publisher = gets.chomp
    p "What is the book cover state: "
    cover_state = gets.chomp

    book = Book.new(publish_date, publisher, cover_state)
    label = create_label
    label.add_item(book)
    @books.push(book)
    @labels.push(label)

    puts "Book has been created successfully"
end

def list_books
    if @books.empty? 
        puts "Book list is empty"
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
        puts "Label list is empty"
    else
        @labels.each_with_index do |label, index|
            puts "#{index}
            ID: #{label.id},
            title: #{label.title},
            color: #{label.color}\n"
        end
    end
end