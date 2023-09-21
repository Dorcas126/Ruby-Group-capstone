require_relative 'app'
require_relative 'Modules/main_module'
require 'colorize'

class Main
  include MainModule

  def list_options
    puts "\n"
    puts '╔═════════════════════════════╗'.colorize(:blue)
    puts '║    My Catalog of Things     ║'.colorize(:blue)
    puts '╠═════════════════════════════╣'.colorize(:blue)
    puts '║ Select option below:        ║'.colorize(:blue)
    puts '║                             ║'.colorize(:blue)
    puts '║ 1. List available books     ║'.colorize(:blue)
    puts '║ 2. List available games     ║'.colorize(:blue)
    puts '║ 3. List music albums        ║'.colorize(:blue)
    puts '║ 4. List genres              ║'.colorize(:blue)
    puts '║ 5. List authors             ║'.colorize(:blue)
    puts '║ 6. List labels              ║'.colorize(:blue)
    puts '║ 7. Create a book            ║'.colorize(:blue)
    puts '║ 8. Create a game            ║'.colorize(:blue)
    puts '║ 9. Create a music album     ║'.colorize(:blue)
    puts '║ 10. Exit                    ║'.colorize(:blue)
    puts '║                             ║'.colorize(:blue)
    puts '╚═════════════════════════════╝'.colorize(:blue)
    print 'Enter your choice: '.colorize(:cyan)
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
      else
        puts 'Invalid option! Please select a valid option.'.colorize(:red)
      end
    end
  end
end

main = Main.new
main.main
