class Human
    attr_accessor :name, :email
end

class HumanNatural < Human # < = heritage

    attr_accessor :cpf

    def say(text)
        text
    end
end

class LegalPerson < Human # < = heritage

    attr_accessor :cnpj

    def pay_supplier
        "Paying Supplier"
    end
end

h1 = Human.new
h1.name = "Isaac"
h1.email = "isaac@dev.com"

puts ""
puts h1.name
puts h1.email

puts ""

# ------------------
h2 = HumanNatural.new
h2.name = "Fulano"
h2.email = "fulando@who.com"
h2.cpf = "123.456.789.10"

puts h2.name
puts h2.email
puts h2.cpf
puts h2.say("Hello World!")

puts ""

# ------------------
h3 = LegalPerson.new
h3.name = "Company"
h3.email = "company@inc.com"
h3.cnpj = "1234567890-0000"

puts h3.name
puts h3.email
puts h3.cnpj
h3.pay_supplier

puts ""


