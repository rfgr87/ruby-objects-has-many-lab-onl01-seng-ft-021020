class Author 
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(post_title)
     @post_with_title = Post.new(post_title)
     @post_with_title.author = self
     @posts << @post_with_title
   end
  
  def self.post_count
    Post.all.length 
  end
  
  def posts
    Post.all.select{|x| x.author == self}
  end
end