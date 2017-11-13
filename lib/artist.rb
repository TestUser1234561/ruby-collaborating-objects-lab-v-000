class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|o| o.name == name}
    if(artist.is_a? Artist)
      puts "owdk"
      return artist
    end
    return Artist.new(name)
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    puts @songs
  end

end
