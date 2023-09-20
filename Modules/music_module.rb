require_relative '../classes/Music/music_album'

module MusicModule
  def create_musicalbum(publish_date, on_spotify)
    song = MusicAlbum.new(publish_date, on_spotify)
    @songs << song
    save_music_album_to_file(@songs)
  end


end
