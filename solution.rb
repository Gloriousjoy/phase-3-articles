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
        
    end
end