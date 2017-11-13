class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    puts Dir[@path+'/*.mp3']
  end

  def import
    @names.each{ |filename| Song.new_by_filename(filename) }
  end
end
