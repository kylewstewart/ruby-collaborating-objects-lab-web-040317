require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[path + "/*"].collect {|file| file.split('/').last}
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
