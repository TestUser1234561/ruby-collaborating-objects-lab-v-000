class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    name = name.chomp(".mp3").split(" - ")
    Song.new(name[2])
  end
end
