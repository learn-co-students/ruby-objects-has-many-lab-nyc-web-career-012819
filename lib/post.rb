require 'pry'

class Post

attr_accessor :post, :author, :title, :name

@@all = []

def initialize(title)
  @title = title
  @@all << self
  @author = author
  @name = name
end

def self.all
  @@all
end

def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
end



end
