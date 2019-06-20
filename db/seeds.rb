# Reseed Destroyer
Crypto.destroy_all
# Bitcoin Generator
Crypto.create(name: Coinmarketcap.coin(1)["data"]["name"],
description: "The world’s first cryptocurrency, Bitcoin is stored and exchanged securely on the internet through a digital ledger known as a blockchain. Bitcoins are divisible into smaller units known as satoshis — each satoshi is worth 0.00000001 bitcoin.",
logo: "btc.svg",
symbol: Coinmarketcap.coin(1)["data"]["symbol"],
value: Coinmarketcap.coin(1)["data"]["quotes"]["USD"]["price"],
coinbase_id: 1 )
# Bitcoin Cash Generator
Crypto.create(name: Coinmarketcap.coin(1831)["data"]["name"],
description: "Bitcoin Cash is a fork of Bitcoin that seeks to add more transaction capacity to the network in order to be useful for everyday transactions.",
logo: "bch.svg",
symbol: Coinmarketcap.coin(1831)["data"]["symbol"],
value: Coinmarketcap.coin(1831)["data"]["quotes"]["USD"]["price"],
coinbase_id: 1831 )
# Ethereum Generator
Crypto.create(name: Coinmarketcap.coin(1027)["data"]["name"],
description: "Ethereum is both a cryptocurrency and a decentralized computing platform. Developers can use the platform to create decentralized applications and issue new crypto assets, known as Ethereum tokens.",
logo: "eth.svg",
symbol: Coinmarketcap.coin(1027)["data"]["symbol"],
value: Coinmarketcap.coin(1027)["data"]["quotes"]["USD"]["price"],
coinbase_id: 1027 )
# Litecoin generator
Crypto.create(name: Coinmarketcap.coin(2)["data"]["name"],
description: "Litecoin is a cryptocurrency that uses a faster payment confirmation schedule and a different cryptographic algorithm than Bitcoin.",
logo: "ltc.svg",
symbol: Coinmarketcap.coin(2)["data"]["symbol"],
value: Coinmarketcap.coin(2)["data"]["quotes"]["USD"]["price"],
coinbase_id: 2 )
# Stellar Lumens Generator
Crypto.create(name: Coinmarketcap.coin(512)["data"]["name"],
description: "Stellar’s cryptocurrency, the Stellar Lumen (XLM), powers the Stellar payment network. Stellar aims to connect banks, payment systems, and individuals quickly and reliably.",
logo: "xlm.svg",
symbol: Coinmarketcap.coin(512)["data"]["symbol"],
value: Coinmarketcap.coin(512)["data"]["quotes"]["USD"]["price"],
coinbase_id: 512 )

# EOS Generator
Crypto.create(name: Coinmarketcap.coin(1765)["data"]["name"],
description: "EOS is a cryptocurrency designed to support large-scale applications. There are no fees to send or receive EOS. Instead, the protocol rewards the entities that run the network periodically with new EOS, effectively substituting inflation for transaction fees.",
logo: "eos.svg",
symbol: Coinmarketcap.coin(1765)["data"]["symbol"],
value: Coinmarketcap.coin(1765)["data"]["quotes"]["USD"]["price"],
coinbase_id: 1765 )
# Monero Generator
Crypto.create(name: Coinmarketcap.coin(328)["data"]["name"],
description: "Monero is a cryptocurrency focused on privacy. Transactions on the Monero blockchain can’t be tracked or traced. Monero uses a proof of work consensus algorithm to issue new coins and secure transactions.",
logo: "xmr.svg",
symbol: Coinmarketcap.coin(328)["data"]["symbol"],
value: Coinmarketcap.coin(328)["data"]["quotes"]["USD"]["price"],
coinbase_id: 328 )
# QTUM Generator
Crypto.create(name: Coinmarketcap.coin(1684)["data"]["name"],
description: "Qtum (pronounced “quantum”) is a cryptocurrency that seeks to add Ethereum smart contracts to Bitcoin’s blockchain while using proof of stake for verification. Qtum’s goal is to increase the interoperability of smart contract applications.",
logo: "qtum.svg",
symbol: Coinmarketcap.coin(1684)["data"]["symbol"],
value: Coinmarketcap.coin(1684)["data"]["quotes"]["USD"]["price"],
coinbase_id: 1684 )
# Golddoubloons Generator
