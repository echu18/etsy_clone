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
u1 = User.create(username: 'Jamie', email: 'jamie@cc.com', password: '123456', store_name: 'MemeEconomy')
u2 = User.create(username: 'Winston', email: 'winston@cc.com', password: '123456')
u3 = User.create(username: 'Fred', email: 'fred@cc.com', password: '123456')
u4 = User.create(username: 'Mindy', email: 'mindy@cc.com', password: '123456')
u5 = User.create(username: 'Sean', email: 'sean@cc.com', password: '123456')
u6 = User.create(username: 'Jerry', email: 'jerry@cc.com', password: '123456')
u7 = User.create(username: 'June', email: 'june@cc.com', password: '123456')
u8 = User.create(username: 'Emmy', email: 'emmy@cc.com', password: '123456')
u9 = User.create(username: 'Kyle', email: 'kyle@cc.com', password: '123456')
u10 = User.create(username: 'Peter', email: 'peter@cc.com', password: '123456')
u11 = User.create(username: 'Jenna', email: 'jenna@cc.com', password: '123456')
u12 = User.create(username: 'Arthur', email: 'arthur@cc.com', password: '123456')
u13 = User.create(username: 'Justin', email: 'justin@cc.com', password: '123456')
u14 = User.create(username: 'Dianne', email: 'dianne@cc.com', password: '123456')
u15 = User.create(username: 'Harold', email: 'harold@cc.com', password: '123456')
u16 = User.create(username: 'Valeria', email: 'valeria@cc.com', password: '123456')
u17 = User.create(username: 'Vanessa', email: 'vanessa@cc.com', password: '123456')
u18 = User.create(username: 'Joel', email: 'joel@cc.com', password: '123456')
u19 = User.create(username: 'Michaela', email: 'michaela@cc.com', password: '123456')

file200 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/crying_cat.jpg')
file201 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/pizza_cat.png')
file202 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/smug_knife_cat.jpg')
file203 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/tired_cat.png')
file204 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/sitting_cat.png')

file205 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/cat1.jpg')
file206 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/cat2.jpeg')
file207 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/cat3.jpg')
file208 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/cat4.jpg')
file209 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/cat5.jpg')

u1.photos.attach(io: file200, filename: 'crying_cat.jpg')
u2.photos.attach(io: file201, filename: 'pizza_cat.png')
u3.photos.attach(io: file202, filename: 'smug_knife_cat.jpg')
u4.photos.attach(io: file203, filename: 'tired_cat.png')
u5.photos.attach(io: file204, filename: 'sitting_cat.png')

u6.photos.attach(io: file205, filename: 'cat1.jpg')
u7.photos.attach(io: file206, filename: 'cat2.jpg')
u8.photos.attach(io: file207, filename: 'cat3.jpg')
u9.photos.attach(io: file208, filename: 'cat4.jpg')
u10.photos.attach(io: file209, filename: 'cat5.jpg')





p1 = Product.create!(name:'Cat Memes Sticker Pack', description: 'This sticker pack includes six waterproof vinyl stickers of cat memes. They\'re perfect for laptops, water bottles (hand wash only), phones and whatever you can think of. These stickers make a good gift for meme addicts or a treat for yourself. These stickers were printed on vinyl waterproof and tear proof laser paper.
    Measurements:
    Woman yelling and cat being yelled at (second image): 5.7 cm and 3.7 cm at longest measurements
    Coughing cat (third image): 7.5 cm at longest measurement
    Polite cat (fourth image): 4.9 cm at longest measurement
    Crying cat (fifth image): 8 cm at longest measurement
    Cat on stairs (sixth image): 6 cm at longest measurement', 
    price: 9.47, seller_id: u1.id, category_id: 22)

file100 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/crying_cat.jpg')
file101 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/pizza_cat.png')
file102 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/smug_knife_cat.jpg')
file103 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/tired_cat.png')
file104 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/profile-images/sitting_cat.png')

p1.photos.attach(io: file100, filename: 'crying_cat.jpg')
p1.photos.attach(io: file101, filename: 'pizza_cat.png')
p1.photos.attach(io: file102, filename: 'smug_knife_cat.jpg')
p1.photos.attach(io: file103, filename: 'tired_cat.png')
p1.photos.attach(io: file104, filename: 'sitting_cat.png')

r1 = Review.create(body: 'I love it! Thank you very much! <3', author_id: u6.id, product_id: p1.id, rating: 5)
r2 = Review.create(body: 'These are so rad! I love everything I ordered, and I will most definitely be purchasing again!', author_id: u12.id, product_id: p1.id, rating: 5)
r3 = Review.create(body: 'I LOVE CATS SO MUCH', author_id: u1.id, product_id: p1.id, rating: 4)


p2 = Product.create!(name:'Surprised Pikachu Enamel Pin - Pokemon Enamel Pin - Funny Enamel Pin - Funny Meme Badge - Gamer Gift', description:'This surprised pikachu enamel pin is the perfect badge for people who love the surprised pikachu meme! Pop it on your coat lapel, bag, or anywhere else and always be prepared for the moment you need to whip out a surprised pika!
This pin bears a rubber butterfly clutch which is more secure than its metal cousin so you can worry less about it falling off! It comes with a backing card approximately 55 x 85mm in size.
Please note: As an eco-friendly store I have opted to exclude the plastic packaging in which enamel pins are normally wrapped. Instead, your pin will come in a colourful paper bag.',
price: 8.49, seller_id: u4.id, category_id: 22)

file106 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pikachu1.jpg')
file107 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pikachu2.jpg')
file108 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pikachu3.jpg')
file109 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pikachu4.jpg')
file110 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pikachu5.jpg')

p2.photos.attach(io: file106, filename: 'pikachu1.jpg')
p2.photos.attach(io: file107, filename: 'pikachu2.jpg')
p2.photos.attach(io: file108, filename: 'pikachu3.jpg')
p2.photos.attach(io: file109, filename: 'pikachu4.jpg')
p2.photos.attach(io: file110, filename: 'pikachu5.jpg')


r4 = Review.create(body: 'The quality, from the imaging to the material, are great and my friend loved them! They included a complimentary set as a holiday gift and thank you which I thought was so nice! I definitely recommend buying from him and will be coming back in the future 😊',
author_id: u2.id, product_id: p2.id, rating: 5)

r5 = Review.create(body: 'My friend was so surprised at his present his face just lit up!! The Pikachu badge was so well made and very well received! :)',
author_id: u14.id, product_id: p2.id, rating: 5)

r6 = Review.create(body: 'So pleased with this product! It arrived quickly and was good quality. Exactly what I was after thank you :)',
author_id: u3.id, product_id: p2.id, rating: 5)

r7 = Review.create(body: 'Mint. My sister loved it and it has joined her rapidly- growing pin collection on her school lanyard and bag.',
author_id: u17.id, product_id: p2.id, rating: 4)

r8 = Review.create(body: 'The pin is cute and well made. Shipping took about a week longer than estimated.',
author_id: u5.id, product_id: p2.id, rating: 4)

r9 = Review.create(body: 'Just ok. GENGAR IS BEST MON', author_id: u1.id, product_id: p2.id, rating: 3)




p3 = Product.create!(name:'Doge meme poster Aristocrat Dog internet modern pop art design', description: "Do you feel like you need a fancy touch in your living room? With this awesome Aristocrat Doge poster, you\’ll have all the luxury you need. The doge meme is a trend that has branched out into many offshoots and styles, so why not hang a depiction that is dignified and adorable on your wall? The colors are highly saturated into a matte, acid-free paper in multiple sizes, ready to be prepared for your office or living room. The print is easily delivered right to you, with multiple dimension choices available for you right away, so it will always be able to fit on your wall. Whether you are a fan of dogs or a fan of jokes on the internet, this translation of meme into art is now available and an easy purchase for a little extra color in your life, or for a friend that enjoys art for themselves. Let your love of fun and art collide with a purchase of this print!", 
    price: 12.00, seller_id: u13.id, category_id: 22)


file111 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster1.jpg')
file112 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster2.jpg')
file113 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster3.jpg')
file114 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster4.jpg')
file115 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster5.jpg')
file116 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/doge_poster6.jpg')

p3.photos.attach(io: file111, filename: 'doge_poster1.jpg')
p3.photos.attach(io: file112, filename: 'doge_poster2.jpg')
p3.photos.attach(io: file113, filename: 'doge_poster3.jpg')
p3.photos.attach(io: file114, filename: 'doge_poster4.jpg')
p3.photos.attach(io: file115, filename: 'doge_poster5.jpg')
p3.photos.attach(io: file116, filename: 'doge_poster6.jpg')


r10 = Review.create(body: 'Package came in much earlier than expected (4 days since the day it was dispatched) and in perfect condition. The poster is exactly as large as the store says it is and is very high quality.', 
author_id: u11.id, product_id: p3.id, rating: 4)

r11 = Review.create(body: 'I really love the bright pop of color and humor that this gives my living room. I got the 10x8 size, which is big enough to see easily without feeling like a poster. I also got it in a timely manner. Very happy!', 
author_id: u19.id, product_id: p3.id, rating: 5)

r12 = Review.create(body: 'SUCH COLOR MUCH WOW', 
author_id: u1.id, product_id: p3.id, rating: 5)
