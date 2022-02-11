class Human
    
    def say # instantied method
        "Hello World!"
    end

    def self.shouting(text) # class method / don't need instantiate
        "#{text}!!!!"
    end

end

h1 = Human.new
puts h1.say

puts Human.shouting('Hello!') # not instantied 