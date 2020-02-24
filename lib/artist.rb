require "pry"

class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs
    Song.all.select{|x| x.artist == self}
  end
  
  
  def add_song_by_name(song_name)
    @song_by_name = Song.new(song_name)
    @song_by_name.artist = self
    @songs << @song_by_name
  end
  
  def self.song_count
    Song.all.length
  end
  
end