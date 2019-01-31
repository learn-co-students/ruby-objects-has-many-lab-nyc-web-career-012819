class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    author_n = ""
    @@all.select do |post|
      if post.title ==self.title
        if post.author
          author_n = post.author.name
          # binding.pry
        else
          author_n = nil
        end
      end
    end
    author_n
  end

end
