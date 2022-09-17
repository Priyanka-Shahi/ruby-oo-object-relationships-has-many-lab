class Author
    attr_accessor :name

    def initialize(name)
        @name= name
    end

    def add_post(post)
        Post.author= self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def post
        Post.all.select {|post| post.author == self}
    end

    def self.post_count
        Post.all.length
    end

end