class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    title = name.chomp(".mp3").split(" - ")
    Song.new(title)
  end
end
