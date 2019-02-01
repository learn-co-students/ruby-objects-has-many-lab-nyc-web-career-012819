require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end
binding.pry
  def add_song(song)
    binding.pry
    song.artist = self
    self.songs << song
  end

  def add_song_by_name(song)
    newSong = Song.new(song)
    self.songs << newSong
    newSong.artist = self
  end

  def self.song_count
    Song.all.length
  end

end
