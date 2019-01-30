class Artist

	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def add_song(song)
		song.artist = self
		song
	end

	def add_song_by_name(song_name)
		Song.new(song_name).artist = self
	end

	def songs
		Song.all.select do |song|
			song.artist == self
		end
	end

	def self.song_count
		Song.all.length
	end
	
end