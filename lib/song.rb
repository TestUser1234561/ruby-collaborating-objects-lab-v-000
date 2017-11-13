class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    name.split(" - ")
    Song.new(name[1])
  end
end
