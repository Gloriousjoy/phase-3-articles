# Please copy/paste all three classes into this file to submit your solution!
#Author
class Authors
    attr_reader :name 
    @@all = []
    def initilize (name)
        @name = name
        @@all << self
    end
    def articles
        Article.all.filter{|article| article.author == self}
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
end

#magazine
class Magazine
    attr_accessor :category, :name
    @@all = []
    def initialize(category, name)
        @category= category
        @name = name
        @@all << self
        def articles
            Article.all.filter {|article| article.magazine == self}
          end
          def article_titles
            self.articles.map {|article| article.title}
          end
          def contributors
            self.articles.map {|article| article.author}.uniq
          end
          def contributing_authors
            self.contributors.filter {|author| author.articles.count > 2}
          end
        #class methods
        def self.all
          @@all
        end
        def self.find_by_name (name:)
          self.all.find{|magazine| magazine.name == name}
        end
end
        #article
    class Article
    attr_reader :author, :magazine, :title
    @@all = []
def initialize (author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
end
def self.all
    @@all
end
end