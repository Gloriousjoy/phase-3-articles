# Please copy/paste all three classes into this file to submit your solution!
#Author
class Authors
    attr_accessor :name 
    @@all = []
    def initilize (name)
        @name = name
        @@all << self
    end
    def articles
        Articles.all.filter{|article| article.author == self}
    end
    def magazines
        self.articles.map{|article| article.magazine}.uniq
    end
    def add_article (magazine, title)
        Article.new(self, magazine, title)
      end
      def topic_areas
        self.magazine.map {|magazine| magazine.category}.uniq
      end
    def self.all
        @@al
    
end
class Magazine
    attr_accessor :category, :name
    @@all = []
    def initialize(category, name)
        @category= category
        @name = name
        @@all << self
    end
end