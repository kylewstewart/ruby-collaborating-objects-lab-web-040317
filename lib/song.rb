require 'pry'

class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split(/[[:punct:]]/)[1].strip)
    artist_name = filename.split(/[[:punct:]]/)[0].strip
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    song
  end


end
