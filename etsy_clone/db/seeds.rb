# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
require 'open-uri'


User.destroy_all
Product.destroy_all
Review.destroy_all

demouser = User.create(username: 'DemoUser', email: 'DemoUser', password: '123456')
u1 = User.create(username: 'jamie', email: 'jamie@cc.com', password: '123456', store_name: 'MemeEconomy')
u2 = User.create(username: 'winston', email: 'winston@cc.com', password: '123456')
u3 = User.create(username: 'fred', email: 'fred@cc.com', password: '123456')
u4 = User.create(username: 'mindy', email: 'mindy@cc.com', password: '123456')
u5 = User.create(username: 'sean', email: 'sean@cc.com', password: '123456')
u6 = User.create(username: 'jerry', email: 'jerry@cc.com', password: '123456')

file123 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/print5.jpg')
u1.photos.attach(io: file123, filename: 'print5.jpg');


p1 = Product.create(name:'Cat Memes Sticker Pack', description: 'This sticker pack includes six waterproof vinyl stickers of cat memes. They\'re perfect for laptops, water bottles (hand wash only), phones and whatever you can think of. These stickers make a good gift for meme addicts or a treat for yourself. These stickers were printed on vinyl waterproof and tear proof laser paper.
    Measurements:
    Woman yelling and cat being yelled at (second image): 5.7 cm and 3.7 cm at longest measurements
    Coughing cat (third image): 7.5 cm at longest measurement
    Polite cat (fourth image): 4.9 cm at longest measurement
    Crying cat (fifth image): 8 cm at longest measurement
    Cat on stairs (sixth image): 6 cm at longest measurement', 
    price: 9.47, seller_id: u1.id, category_id: 22)

file101 = open('http://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/smug_knife_cat.jpg')
file102 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/crying+cat.jpg')
file103 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/saladcat.png')
file104 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pizza_cat.png')
file105 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/sitting_cat.png')
p1.photos.attach(io: file101, filename: 'smug_knife_cat.jpg')
p1.photos.attach(io: file102, filename: 'crying+cat.jpg')
p1.photos.attach(io: file103, filename: 'saladcat.png')
p1.photos.attach(io: file104, filename: 'pizza_cat.png')
p1.photos.attach(io: file105, filename: 'sitting_cat.png')


p2 = Product.create(name:'Surprised Pikachu Enamel Pin - Pokemon Enamel Pin - Funny Enamel Pin - Funny Meme Badge - Gamer Gift', description:'This surprised pikachu enamel pin is the perfect badge for people who love the surprised pikachu meme! Pop it on your coat lapel, bag, or anywhere else and always be prepared for the moment you need to whip out a surprised pika!
This pin bears a rubber butterfly clutch which is more secure than its metal cousin so you can worry less about it falling off! It comes with a backing card approximately 55 x 85mm in size.
Please note: As an eco-friendly store I have opted to exclude the plastic packaging in which enamel pins are normally wrapped. Instead, your pin will come in a colourful paper bag.

DETAILS
* Soft enamel pin with a black dye backing
* Rubber clutch fastening
* Size: Approx 25 x 20mm
* Comes with backing card approx 55 x 85mm
* Great for bags, coat lapels, etc', price: 8.49, seller_id: u1.id, category_id: 22)
file106 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pikachu1.jpg')
file107 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pikachu2.jpg')
file108 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pikachu3.jpg')
file109 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pikachu4.jpg')
file110 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pikachu5.jpg')

p2.photos.attach(io: file106, filename: 'pikachu1.jpg')
p2.photos.attach(io: file107, filename: 'pikachu2.jpg')
p2.photos.attach(io: file108, filename: 'pikachu3.jpg')
p2.photos.attach(io: file109, filename: 'pikachu4.jpg')
p2.photos.attach(io: file110, filename: 'pikachu5.jpg')


r1 = Review.create(body: 'The quality, from the imaging to the material, are great and my friend loved them! They included a complimentary set as a holiday gift and thank you which I thought was so nice! I definitely recommend buying from him and will be coming back in the future 😊',
author_id: u2.id, product_id: p1.id, rating: 5)

r2 = Review.create(body: 'My friend was so surprised at his present his face just lit up!! The Pikachu badge was so well made and very well received! :)',
author_id: u2.id, product_id: p2.id, rating: 5)

r3 = Review.create(body: 'So pleased with this product! It arrived quickly and was good quality. Exactly what I was after thank you :)',
author_id: u3.id, product_id: p2.id, rating: 5)

r4 = Review.create(body: 'Mint. My sister loved it and it has joined her rapidly- growing pin collection on her school lanyard and bag.',
author_id: u4.id, product_id: p2.id, rating: 4)

r5 = Review.create(body: 'The pin is cute and well made. Shipping took about a week longer than estimated.',
author_id: u5.id, product_id: p2.id, rating: 4)
