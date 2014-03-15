google = Provider.create name: 'Google Inc', email: 'google@gmail.com'
apple  = Provider.create name: 'Apple Inc', email: 'apple@mac.com'

nexus5 = Product.create name: 'Nexus 5', description: 'Android', price: 350.0, provider: google
nexus7 = Product.create name: 'Nexus 7', description: 'Android', price: 250.0, provider: google
iphone5 = Product.create name: 'iPhone 5s', description: 'iOS', price: 400.0, provider: apple
ipad = Product.create name: 'iPad mini', description: 'iPad', price: 300.0, provider: apple
