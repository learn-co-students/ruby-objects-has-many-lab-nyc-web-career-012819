class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @author = author
  end

  def self.all
  @@all
end

def author_name
  author.name if author #ask about this? how does this return nil if post does not have an author? looked at solution for this part. 
end

end
