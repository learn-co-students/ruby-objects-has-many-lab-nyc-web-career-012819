# class Author
#
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @posts = []
#   end
#
#   def posts
#     @posts
#   end
#
#   def add_post(post)
#     self.posts << post
#     post.post_author = self
#   end
#
# end
class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @author_posts = []
  end

  def posts
    @author_posts
  end

  def add_post(post)
    @author_posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @author_posts << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.size
  end

end
