require_relative "payment"

include Payment

#pay = Payment::Visa.new
pay = Visa.new
puts pay.paying