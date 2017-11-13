class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    title = name.chomp(".mp3").split(" - ")
    song = Song.new(title[1])
    song.artist = Artist.find_or_create_by_name(title[0])
    song
    puts song
  end
end
