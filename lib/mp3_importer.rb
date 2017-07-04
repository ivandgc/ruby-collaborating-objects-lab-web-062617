require'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir["#{path}/*.mp3"].collect do |song|
        song.split("/").last
     end
  end

  def import
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end

end
