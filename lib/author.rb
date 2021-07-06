class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end

  def self.post_count
    Song.all.length
  end
end
