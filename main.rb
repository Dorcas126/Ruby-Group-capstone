require_relative 'app'
require_relative 'modules/main_module'

class Main
  include MainModule

  def list_options
    puts "\n"
    puts 'Enter number to pick an option:'
    puts '1. List all books'
    puts '2. List all games'
    puts '3. List all music albums'
    puts '4. List all genres'
    puts '5. List all authors'
    puts '6. List all labels'
    puts '7. Add a book'
    puts '8. Add a game'
    puts '9. Add a music album'
    puts '10. End'
  end
