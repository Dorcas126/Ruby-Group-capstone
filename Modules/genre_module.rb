require_relative '../classes/Music/genre'

module GenreModule
  def list_genres
    if @genres.empty?
      puts "\n"
      puts 'There are no genre' .colorize(:red)
    else
      @genres.each_with_index do |genre, i|
        puts "\n"
        puts "#{i + 1}) ID: #{genre.id}, Last name: #{genre.name}"
      end
    end
  end
end
