# should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Crypto.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Crypto.create(name: Coinmarketcap.coin(1)["data"]["name"], description: "Bitcoin blah blah blah Bitcoin money Blah", logo: "404", symbol: Coinmarketcap.coin(1)["data"]["symbol"], value: Coinmarketcap.coin(1)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(2)["data"]["name"], description: "Litecoin blah blah blah Litecoin money Blah", logo: "404", symbol: Coinmarketcap.coin(2)["data"]["symbol"], value: Coinmarketcap.coin(2)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(3)["data"]["name"], description: "Namecoin blah blah blah Namecoin money Blah", logo: "404", symbol: Coinmarketcap.coin(3)["data"]["symbol"], value: Coinmarketcap.coin(3)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(4)["data"]["name"], description: "Terracoin blah blah blah Terracoin money Blah", logo: "404", symbol: Coinmarketcap.coin(4)["data"]["symbol"], value: Coinmarketcap.coin(4)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(5)["data"]["name"], description: "Peercoin blah blah blah Peercoin money Blah", logo: "404", symbol: Coinmarketcap.coin(5)["data"]["symbol"], value: Coinmarketcap.coin(5)["data"]["quotes"]["USD"]["price"].round(2))
# Crypto.create(name: Coinmarketcap.coin(6)["data"]["name"], description: Coinmarketcap.coin(6)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(6)["data"]["symbol"], value: Coinmarketcap.coin(6)["data"]["quotes"]["USD"]["price"].round(2))
# Crypto.create(name: Coinmarketcap.coin(7)["data"]["name"], description: Coinmarketcap.coin(7)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(7)["data"]["symbol"], value: Coinmarketcap.coin(7)["data"]["quotes"]["USD"]["price"].round(2))
# Crypto.create(name: Coinmarketcap.coin(8)["data"]["name"], description: Coinmarketcap.coin(8)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(8)["data"]["symbol"], value: Coinmarketcap.coin(8)["data"]["quotes"]["USD"]["price"].round(2))
# Crypto.create(name: Coinmarketcap.coin(9)["data"]["name"], description: Coinmarketcap.coin(9)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(9)["data"]["symbol"], value: Coinmarketcap.coin(9)["data"]["quotes"]["USD"]["price"].round(2))
