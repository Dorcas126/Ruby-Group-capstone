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

end
