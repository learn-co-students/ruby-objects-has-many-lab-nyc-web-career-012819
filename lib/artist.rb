class Artist
attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end
@@count = 0

def add_song(song)
  song.artist = self
@songs << song
@@count += 1
end

def add_song_by_name(song_name)
song = Song.new(song_name)
self.add_song(song)
end

def self.song_count
@@count
end

end
