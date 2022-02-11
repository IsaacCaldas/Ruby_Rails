class Human

    # Special method 
    / initialize - this method start when the class is instantied /
    def initialize(cont = 5)
        cont.times do |i|
            puts "Starts... #{i + 1}"
        end
    end
# def / end = create a method
    def say(name = "Ruby")
        "Hello #{name}!"
    end

    def text(text = "I'm learning ruby.")
        text
    end

    def introduce(age, number)
        "I have #{age} years old, and my favourite number is #{number}."
    end

end

h = Human.new(5)
puts h.say("Isaac")
puts h.text
puts h.introduce(18, 7)
puts ""
x = Human.new(1)
puts x.say
puts h.text("Ruby is cool!")

