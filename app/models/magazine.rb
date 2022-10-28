require_relative './article'
class Magazine
  attr_accessor :name, :category
  @@all = []
#instance methods
  def initialize(name, category)
    @name = name
    @category = category
    @@all <<self
  end
  def articles
    Article.all.filter {|article| article.magazine == self}
  end
  def article_titles
    self.all.map {|article| article.title}
  end
#class methods
def self.all
  @@all
end

end
