module MainModule
  def add_game(app)
    puts "\n"
    puts 'Is game multiplayes [Yes/No]:'
    multiplayer = gets.chomp
    puts 'When is game last played [Enter date format YYYY-MM-DD]:'
    last_played_at = valid_date_input
    puts 'When is game published [Enter date format YYYY-MM-DD]:'
    publish_date = valid_date_input
    app.create_game(multiplayer, last_played_at, publish_date)
  end

  def add_mucicalbum(app)
    puts "\n"
    puts 'Is it on Spotify [True/False]:'
    on_spotify = gets.chomp
    on_spotify = %w[True true].include?(on_spotify)
    puts 'When is album published [Enter date format YYYY-MM-DD]:'
    publish_date = valid_date_input
    app.create_musicalbum(publish_date, on_spotify)
  end

  def add_book(app)
    puts "\n"
    puts 'Who is the publisher [Enter Publisher Name]:'
    publisher = gets.chomp
    puts 'What Is the cover\'s state like? [Enter good or bad]:'
    cover_state = gets.chomp
    puts 'When was the book published [Enter date format YYYY-MM-DD]:'
    publish_date = valid_date_input
    app.create_book(publisher, cover_state, publish_date)
  end

  private

  def valid_date_input
    loop do
      input = gets.chomp
      return input if input.match?(/\A\d{4}-\d{2}-\d{2}\z/)

      puts 'Invalid date format. Please enter a date in the format YYYY-MM-DD:'
    end
  end
end
