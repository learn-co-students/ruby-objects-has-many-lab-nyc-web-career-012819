require 'pry'

class Artist

  @@all=[]

  attr_accessor :name, :song

  def initialize(name)
    @name=name
  end

  def songs
    @@all
  end

  def add_song(song)
    song.artist=self
    @@all<< song
  end

  def add_song_by_name(song)
    new_song=Song.new(song)
    new_song.artist=self
    @@all<< new_song
  end

  def self.song_count
    @@all.length
  end
end
