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

  def artist_name
    artist_n = ""
    @@all.select do |song|
      if song.name ==self.name
        if song.artist
          artist_n = song.artist.name
        else
          artist_n = nil
        end
      end
    end
    artist_n
  end

end
