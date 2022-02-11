/ In ruby not exist getters and setters, only have a attr_accessor (this atribute give to you a get and set) /

class Human
   
    attr_accessor :name # is more simple 

    def initialize(name = "John Doe")
        @name = name
    end

    def set_name=(name)
        @name = name
    end
    # second example of manual getter and setter
    def set_name2(name)
        @name = name
    end

    def get_name 
        @name
    end
        
end

h1 = Human.new
h1.name = "Isaac"   # setter
h1.name = "Ruby"    # setter
h1.name = "Astolfo" # setter
puts h1.name        # getter

h2 = Human.new
h2.set_name = "Joaquim"  # manual set with method
puts h2.get_name          # manuel get with method

h3 = Human.new
h3.set_name2("Fulano") # manual set with method
puts h3.get_name      # manuel get with method