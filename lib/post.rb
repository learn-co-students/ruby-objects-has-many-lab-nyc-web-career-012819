class Post

  attr_accessor :post_title, :author

  @@all = []

  def initialize(post_title)
    @author = author
    @post_title = post_title
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    self.post_title
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

end
