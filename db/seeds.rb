<<<<<<< HEAD
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Crypto.create(name: Coinmarketcap.coin(1)["data"]["name"], description: Coinmarketcap.coin(1)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(1)["data"]["symbol"], value: Coinmarketcap.coin(1)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(2)["data"]["name"], description: Coinmarketcap.coin(2)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(2)["data"]["symbol"], value: Coinmarketcap.coin(2)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(3)["data"]["name"], description: Coinmarketcap.coin(3)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(3)["data"]["symbol"], value: Coinmarketcap.coin(3)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(4)["data"]["name"], description: Coinmarketcap.coin(4)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(4)["data"]["symbol"], value: Coinmarketcap.coin(4)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(5)["data"]["name"], description: Coinmarketcap.coin(5)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(5)["data"]["symbol"], value: Coinmarketcap.coin(5)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(6)["data"]["name"], description: Coinmarketcap.coin(6)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(6)["data"]["symbol"], value: Coinmarketcap.coin(6)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(7)["data"]["name"], description: Coinmarketcap.coin(7)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(7)["data"]["symbol"], value: Coinmarketcap.coin(7)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(8)["data"]["name"], description: Coinmarketcap.coin(8)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(8)["data"]["symbol"], value: Coinmarketcap.coin(8)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(9)["data"]["name"], description: Coinmarketcap.coin(9)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(9)["data"]["symbol"], value: Coinmarketcap.coin(9)["data"]["quotes"]["USD"]["price"].round(2))
Crypto.create(name: Coinmarketcap.coin(10)["data"]["name"], description: Coinmarketcap.coin(10)["data"]["description"], logo: "404", symbol: Coinmarketcap.coin(10)["data"]["symbol"], value: Coinmarketcap.coin(10)["data"]["quotes"]["USD"]["price"].round(2))
>>>>>>> dean
