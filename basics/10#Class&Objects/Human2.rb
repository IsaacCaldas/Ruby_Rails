class Human

    def say(name = "Ruby")
        "Hello #{name}!"
    end

    def myId # self = this
        "My id is #{self.object_id}"
    end
end

h1 = Human.new
puts h1.myId
puts h1.myId

h2 = Human.new
puts h2.myId

