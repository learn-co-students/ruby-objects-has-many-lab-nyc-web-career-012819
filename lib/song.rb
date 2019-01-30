class Song

  @@all = []
  attr_accessor :song, :name, :artist

  def initialize(song)
    @song = song
    @name = song
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end





end
