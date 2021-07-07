require 'pry'

class Author
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
  end

  def posts
    @@all
  end

  def add_post(post)
    post.author=self
    @@all<< post
  end

  def add_post_by_title(post)
    new_post=Post.new(post)
    new_post.author=self
    @@all<< new_post
  end

  def self.post_count
    @@all.length
  end
end
