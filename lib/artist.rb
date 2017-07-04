class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
      @name = name
      @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    unless self.all.include?(artist)
      artist  = self.new(name)
      artist.save
    end
    artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
