# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Generating coins... ")
spinner.auto_spin 

coins = [
	{
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://cdn.icon-icons.com/icons2/1487/PNG/512/8369-bitcoin_102502.png"
	},
	{
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/"
	},
	{
    description: "Santos token",
    acronym: "SFC",
    url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/15248.png"
	}
]

coins.each do |coin|
	Coin.find_or_create_by!(coin)
end

spinner.success("(Coins generated with success)")