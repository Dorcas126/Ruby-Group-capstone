require_relative 'Modules/book_module'
require_relative 'Modules/game_module'
require_relative 'Modules/music_module'
require_relative 'Modules/genre_module'
require_relative 'Modules/author_module'
require_relative 'Modules/label_module'
require_relative 'data_manager/music_manager'
require_relative 'data_manager/game_manager'
require_relative 'data_manager/author_manager'
require_relative 'data_manager/genre_manager'
require_relative 'data_manager/book_manager'
require_relative 'data_manager/label_manager'

class App
  attr_accessor :books, :games, :music, :genre, :author, :label

  def initialize()
    @books = []
    @games = []
    @songs = []
    @genres = []
    @authors = []
    @labels = []
    @music_album_data = MusicManager.new
    @game_data = GameManager.new
    @author_data = AuthorManager.new
    @genre_data = GenreManager.new
    @book_data = BookManager.new
    @label_data = LabelManager.new
    load_data
  end

  include BookModule
  include GameModule
  include MusicModule
  include GenreModule
  include AuthorModule
  include LabelModule

  def load_data
    @songs = @music_album_data.load_music_album
    @games = @game_data.load_games
    @authors = @author_data.load_authors
    @genres = @genre_data.load_genre
    @books = @book_data.load_books
    @labels = @label_data.load_labels
  end
end
