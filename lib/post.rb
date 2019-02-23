class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @author = author
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author_info ||= self.author
    author_info.name
    else
      nil
    end
  end
end
