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

  def main
    app = App.new
    loop do
      list_options
      option = gets.chomp.to_i
      options = {
        1 => -> { app.list_books }, 2 => -> { app.list_games }, 3 => -> { app.list_musicalbums },
        4 => -> { app.list_genres },
        5 => -> { app.list_authors },
        6 => -> { app.list_labels },
        7 => -> { add_book(app) },
        8 => -> { add_game(app) },
        9 => -> { add_mucicalbum(app) },
        10 => -> { exit }
      }
      case option
      when 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
        options[option].call
      end
    end
  end
end

main = Main.new
main.main
