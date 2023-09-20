module MainModule
  def add_game(app)
    puts "\n"
    puts 'Is game multiplayes [Yes/No]:'
    multiplayer = gets.chomp
    puts 'When is game last played [Enter date format year/month/date]:'
    last_played_at = gets.chomp
    puts 'When is game published [Enter date format year/month/date]:'
    publish_date = gets.chomp
    app.create_game(multiplayer, last_played_at, publish_date)
  end

  def add_mucicalbum(app)
    puts "\n"
    puts 'Is it on spotify [True/False]:'
    on_spotify = gets.chomp
    if %w[True true].include?(on_spotify)
      on_spotify = true
    elsif %w[False false].include?(on_spotify)
      on_spotify = false
    else
      puts 'Invalid input'
    end
    puts 'When is album published [Enter date format year/month/date]:'
    publish_date = gets.chomp
    app.create_musicalbum(publish_date, on_spotify)
  end

end
