class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|f| File.extname(f) == ".mp3"}
  end

  def import
    @names.each{ |filename| Song.new_by_filename(filename) }
  end
end
