require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


#author
mary = Author.new("Mary")
joseph = Author.new("Joseph")

#magazine
techguru = Magazine.new("Python is easier", "Technology")
nairobigossip = Magazine.new("Tokodi's new obsession", "News")
bigboystoys = Magazine.new("Audi new series", "Cars")

#Article
article1= Article.new(mary,techguru, "Intro to Python.")
article2 = Article.new(joseph,bigboystoys, "Is Audi greator than Mercedes?")
article3 = Article.new(mary,nairobigossip, "Grace Kirapa has first child with Pascal Tokodi.")
### DO NOT REMOVE THIS
binding.pry

0
