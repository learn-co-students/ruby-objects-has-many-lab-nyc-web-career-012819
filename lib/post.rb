require_relative "./author.rb"

class Post

	attr_accessor :title, :author

	@@all = []

	def initialize (title)
		@title = title 
		@author = author
		@@all << self
	end


	def self.all
		@@all
	end

	def author_name
		if @author != nil
			@author.name
		end
	end

end