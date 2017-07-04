class Song

  attr_accessor :artist, :name

  def initialize(title)
    @name = title
  end

  def self.new_by_filename(filename)
    song_a = filename.split(" - ")
    song = Song.new(song_a[1])
    song.artist = Artist.find_or_create_by_name(song_a[0])
    song.artist.songs << song
    song
  end

end
