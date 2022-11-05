require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


#author
author1 = Author.new("Julius")
        author2 = Author.new("Mary")
        author3 = Author.new("CS Student")

        magazine1 =  Magazine.new("Python", "Coding")
        magazine2 =  Magazine.new("Ruby", "Coding")
        magazine3 =  Magazine.new("Investing", "Finance")
        magazine4 =  Magazine.new("Genesis", "Bible")

        article1 = Article.new(author3, magazine1, "Introduction to python")
        article2 = Article.new(author3, magazine2, "Introduction to Ruby")
        article3 = Article.new(author3, magazine2, "Active Records")
        article3 = Article.new(author3, magazine2, "Rails")
        article4 = Article.new(author2, magazine1, "Django ORM")
        article5 = Article.new(author2, magazine3, "Investment Banking")
        article6 = Article.new(author2, magazine3, "Money market")
        article7 = Article.new(author1, magazine4, "The creation story")
        article8 = Article.new(author1, magazine4, "The Fall")
### DO NOT REMOVE THIS
binding.pry

0
