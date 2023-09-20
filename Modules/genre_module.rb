require_relative '../classes/Music/genre'

module GenreModule
  def list_genres
    if @genres.empty?
      puts 'There are no genre'
    else
      @genres.each_with_index do |genre, i|
        puts "#{i + 1}) ID: #{genre.id}, Last name: #{genre.name}"
      end
    end
  end
end
