require_relative '../classes/Game/author'
require 'colorize'

module AuthorModule
  def list_authors
    if @authors.empty?
      puts "\n"
      puts 'There are no authors'.colorize(:red)
    else
      puts "\n"
      puts "Authors List".colorize(:green)
      puts "-------------".colorize(:green)
      @authors.each_with_index do |author, i|
        puts "#{i + 1}) First Name:".colorize(:light_blue) + " #{author.first_name}, " +
             "Last Name:".colorize(:light_blue) + " #{author.last_name}"
      end
    end
  end
end
