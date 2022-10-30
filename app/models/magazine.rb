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
  def contributors
    self.all.map {|article| article.author}.uniq
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
