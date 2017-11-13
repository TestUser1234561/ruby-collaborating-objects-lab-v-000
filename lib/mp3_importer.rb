class MP3Importer

  attr_accessor :names

  def initialize(names)
    @names = names
  end

  def files

  end

  def import
    @names.each{ |filename| Song.new_by_filename(filename) }
  end
end
