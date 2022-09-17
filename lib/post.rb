class Post

    @@all = []
    attr_accessor :title, :author

    def initialize(title)
      @title = title
      @author = author
      @@all << self
    end

    def post
        @@all
    end

    def author_name
        self.author.name if author
    end

end