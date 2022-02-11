class Human
    def initialize(name = "pauper")
        @name = name
    end

    def show_name
        @name
    end
end

h1 = Human.new("Isaac")
puts ""
puts h1.show_name
h2 = Human.new 
puts h2.show_name
puts ""

