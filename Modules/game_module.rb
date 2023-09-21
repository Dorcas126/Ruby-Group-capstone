require_relative '../classes/Game/game'

module GameModule
  def create_game(multiplayer, last_played_at, publish_date)
    game = Game.new(multiplayer, last_played_at, publish_date)
    @games << game
  end

  def list_games
    if @games.empty?
      puts 'There are no games'
    else
      @games.each_with_index do |game, i|
        lpa = game.last_played_at
        puts "#{i + 1}) Multiplayer: #{game.multiplayer}, last played: #{lpa}, published: #{game.publish_date}"
      end
    end
  end
end
