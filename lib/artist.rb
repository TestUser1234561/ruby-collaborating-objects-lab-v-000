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

  def self.find_or_create_by_name(name)
    artist = @@all.select {|o| o.name == name}
    if(!artist.nil?)
      return artist
    end
    Artist.new(name)
  end

  def print_songs
    puts @songs
  end

end
