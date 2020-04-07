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

# Seed users

demouser = User.create(username: 'DemoUser', email: 'DemoUser', password: '123456')
u1 = User.create(username: 'Jamie', email: 'jamie@cc.com', password: '123456', store_name: 'MemeEconomy')
u2 = User.create(username: 'Winston', email: 'winston@cc.com', password: '123456', store_name: 'ToastyPrints')
u3 = User.create(username: 'Fred', email: 'fred@cc.com', password: '123456', store_name: 'ScrapbookLemons')
u4 = User.create(username: 'Mindy', email: 'mindy@cc.com', password: '123456', store_name: 'CuriousCurator')
u5 = User.create(username: 'Sean', email: 'sean@cc.com', password: '123456', store_name: 'LightningCrew')
u6 = User.create(username: 'Jerry', email: 'jerry@cc.com', password: '123456', store_name: 'SeaMule')
u7 = User.create(username: 'June', email: 'june@cc.com', password: '123456')
u8 = User.create(username: 'Emmy', email: 'emmy@cc.com', password: '123456')
u9 = User.create(username: 'Kyle', email: 'kyle@cc.com', password: '123456', store_name: 'RetroAMSupply')
u10 = User.create(username: 'Peter', email: 'peter@cc.com', password: '123456')
u11 = User.create(username: 'Jenna', email: 'jenna@cc.com', password: '123456', store_name: 'HelloCart')
u12 = User.create(username: 'Arthur', email: 'arthur@cc.com', password: '123456', store_name: 'ArtKing')
u13 = User.create(username: 'Justin', email: 'justin@cc.com', password: '123456', store_name: 'KitschKat')
u14 = User.create(username: 'Dianne', email: 'dianne@cc.com', password: '123456')
u15 = User.create(username: 'Harold', email: 'harold@cc.com', password: '123456', store_name: 'BubbleTeaSupply')
u16 = User.create(username: 'Valeria', email: 'valeria@cc.com', password: '123456')
u17 = User.create(username: 'Vanessa', email: 'vanessa@cc.com', password: '123456', store_name: 'SpicyWater')
u18 = User.create(username: 'Joel', email: 'joel@cc.com', password: '123456')
u19 = User.create(username: 'Michaela', email: 'michaela@cc.com', password: '123456', store_name: 'MichaelaDraws')


u19 = User.create(username: 'Michael', email: 'michael@cc.com', password: '123456', store_name: 'Mild Art')
u20= User.create(username: 'Suu', email: 'suu@cc.com', password: '123456', store_name: 'SuuPrints')
u21= User.create(username: 'Eva', email: 'eva@cc.com', password: '123456', store_name: 'EvergreenArt')
u22= User.create(username: 'Vicki', email: 'vicki@cc.com', password: '123456', store_name: 'thankunext')
u23= User.create(username: 'Gary', email: 'gary@cc.com', password: '123456', store_name: 'onepunnchhh')
u24= User.create(username: 'Harold', email: 'harold@cc.com', password: '123456', store_name: 'maxdsprite')
u25= User.create(username: 'Josh', email: 'josh@cc.com', password: '123456', store_name: 'pokememe')
u26= User.create(username: 'Nick', email: 'nick@cc.com', password: '123456', store_name: 'CollectorFrame')
u27= User.create(username: 'Brody', email: 'brody@cc.com', password: '123456', store_name: 'boyDesigns')
u28= User.create(username: 'Michelle', email: '@cc.com', password: '123456', store_name: 'HundredThousandIsland')
u29= User.create(username: 'Lucy', email: 'lucy@cc.com', password: '123456', store_name: 'pinluminati')
u30= User.create(username: 'Alyssa', email: 'alyssa@cc.com', password: '123456', store_name: 'PinsPride')

u31= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u32= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u33= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u34= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u35= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u36= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u37= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u38= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u39= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u40= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u41= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u42= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u43= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u44= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u45= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u46= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u47= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u48= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u49= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')
u50= User.create(username: '', email: '@cc.com', password: '123456', store_name: '')



# Seed user profile pictures

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




















# Seed products, product images, reviews

p1 = Product.create(name:'Cat Memes Sticker Pack', description: 'This sticker pack includes six waterproof vinyl stickers of cat memes. They\'re perfect for laptops, water bottles (hand wash only), phones and whatever you can think of. These stickers make a good gift for meme addicts or a treat for yourself. These stickers were printed on vinyl waterproof and tear proof laser paper.
    Measurements:
    Woman yelling and cat being yelled at (second image): 5.7 cm and 3.7 cm at longest measurements
    Coughing cat (third image): 7.5 cm at longest measurement
    Polite cat (fourth image): 4.9 cm at longest measurement
    Crying cat (fifth image): 8 cm at longest measurement
    Cat on stairs (sixth image): 6 cm at longest measurement', 
    price: 9.47, seller_id: u1.id, category_id: 22)

file100 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/catmeme1.jpg')
file101 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/catmeme2.jpg')
file102 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/catmeme3.jpg')
file103 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/catmeme4.jpg')
file104 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/catmeme5.jpg')

p1.photos.attach(io: file100, filename: 'catmeme1.jpg')
p1.photos.attach(io: file101, filename: 'catmeme2.jpg')
p1.photos.attach(io: file102, filename: 'catmeme3.jpg')
p1.photos.attach(io: file103, filename: 'catmeme4.jpg')
p1.photos.attach(io: file104, filename: 'catmeme5.jpg')

r1 = Review.create(body: 'I love it! Thank you very much! <3', author_id: u6.id, product_id: p1.id, rating: 5)
r2 = Review.create(body: 'These are so rad! I love everything I ordered, and I will most definitely be purchasing again!', author_id: u12.id, product_id: p1.id, rating: 5)
r3 = Review.create(body: 'I LOVE CATS SO MUCH', author_id: u1.id, product_id: p1.id, rating: 4)


p2 = Product.create(name:'Surprised Pikachu Enamel Pin - Pokemon Enamel Pin - Funny Enamel Pin - Funny Meme Badge - Gamer Gift', description:'This surprised pikachu enamel pin is the perfect badge for people who love the surprised pikachu meme! Pop it on your coat lapel, bag, or anywhere else and always be prepared for the moment you need to whip out a surprised pika!
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




p3 = Product.create(name:'Doge meme poster Aristocrat Dog internet modern pop art design', description: "Do you feel like you need a fancy touch in your living room? With this awesome Aristocrat Doge poster, you\’ll have all the luxury you need. The doge meme is a trend that has branched out into many offshoots and styles, so why not hang a depiction that is dignified and adorable on your wall? The colors are highly saturated into a matte, acid-free paper in multiple sizes, ready to be prepared for your office or living room. The print is easily delivered right to you, with multiple dimension choices available for you right away, so it will always be able to fit on your wall. Whether you are a fan of dogs or a fan of jokes on the internet, this translation of meme into art is now available and an easy purchase for a little extra color in your life, or for a friend that enjoys art for themselves. Let your love of fun and art collide with a purchase of this print!", 
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




p4 = Product.create(name:'Gundam RX-78-2 Enamel Pin', description: "The most popular gundam, RX-78, is now available as a pin! This enamel pin is high quality and made to last.", 
    price: 11.99, seller_id: u12.id, category_id: 22)


file117 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/gundam11.jpg')
file118 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/gundam12.jpg')
file119 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/gundam13.jpg')

p4.photos.attach(io: file117, filename: 'gundam11.jpg')
p4.photos.attach(io: file118, filename: 'gundam11.jpg')
p4.photos.attach(io: file119, filename: 'gundam11.jpg')



r13 = Review.create(body: 'Awesomely cute and high quality, made out of metal and heavy, with 2 awesome caps to take care of that weight! I am very happy with this one', 
author_id: u4.id, product_id: p4.id, rating: 5)

r14 = Review.create(body: 'I love this pin! It took a little while to get here, but it\'s worth it. Super clean lines on the design', 
author_id: u12.id, product_id: p4.id, rating: 4)






p5 = Product.create(name:'Kawaii Anime Magical Girl T-Shirt | Japanese Kanji Shirts | Fairy Kei Tshirt | Cute Ringer Graphic Tee | Pastel Aesthetic | Espi Lane Shirt', description: "Japanese Kawaii Magical Girl Shirt

• graphic print t shirt
• choose ringer or classic crew t-shirt
• for magical anime & sailor moon lovers
• eco-friendly water based ink
• see below for size info
• printed in my USA loft
• available in unisex or womens close fit t-shirt styles", 
    price: 21.00, seller_id: u7.id, category_id: 22)


file120 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/shirt1.jpg')
file121 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/shirt2.jpg')

p5.photos.attach(io: file120, filename: 'shirt1.jpg')
p5.photos.attach(io: file121, filename: 'shirt2.jpg')



r15 = Review.create(body: 'I love these shirts!! So cute!', 
author_id: u4.id, product_id: p5.id, rating: 5)

r16 = Review.create(body: 'Came on time, and amazing communication! (Sizing might be a little bigger than expected)', 
author_id: u12.id, product_id: p5.id, rating: 4)




p6 = Product.create(name:'Pokemon Terrarium Sleepy Charmander Terrarium Pokeball Charmander gifts Pokemon go Best Pokemon Gifts For Him/Her', description: "Best Pokemon Gifts For The Pokemon Lover .", 
    price: 28.70, seller_id: u8.id, category_id: 22)


file122 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeball1.jpg')
file123 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeball2.jpg')
file124 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeball3.jpg')
file125 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeball4.jpg')
file126 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeball5.jpg')

p6.photos.attach(io: file122, filename: 'pokeball1.jpg')
p6.photos.attach(io: file123, filename: 'pokeball2.jpg')
p6.photos.attach(io: file124, filename: 'pokeball3.jpg')
p6.photos.attach(io: file125, filename: 'pokeball4.jpg')
p6.photos.attach(io: file126, filename: 'pokeball5.jpg')



r17 = Review.create(body: 'Shipping was pretty fast! Would purchase from here again! Thank you!!', 
author_id: u4.id, product_id: p6.id, rating: 5)






p7 = Product.create(name:'Gundam Head RX-78-2 Sticker | Mobile Suit Gundam Exceed Mech Robot Anime Planner Laptop Vinyl Sticker Gift', description: "sieg zeon", 
    price: 2.5, seller_id: u17.id, category_id: 22)


file127 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/gundam1.jpg')
file128 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/gundam2.jpg')

p7.photos.attach(io: file127, filename: 'gundam1.jpg')
p7.photos.attach(io: file128, filename: 'gundam2.jpg')


r18 = Review.create(body: 'Lovely quality gundam head sticker!!! Packaged nicely along with a goodie print. Tysm xxx', 
author_id: u5.id, product_id: p7.id, rating: 4)

r19 = Review.create(body: 'So nice! The colors pop even more in person. Will def consider buying more in the future.', 
author_id: u3.id, product_id: p7.id, rating: 4)

r20 = Review.create(body: 'Came with a few extra stickers and a post card! Very pleasant surprise', 
author_id: u16.id, product_id: p7.id, rating: 5)






p8 = Product.create(name:'Instant Ramen (Shin) Cube | Aesthetic Anime Sticker | Water Resistant Sticker Great for Back to School for Laptop, Water Bottle, Locker!', description: "Shin Ramyun is a definatley the ramen brand of choice, while I do still have much love for Maruchan- but some times I'm feeling bougie and want a Shin brand ramyun ;)", 
    price: 4.00, seller_id: u17.id, category_id: 22)


file129 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ramen1.jpg')
file130 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ramen2.jpg')

p8.photos.attach(io: file129, filename: 'ramen1.jpg')
p8.photos.attach(io: file130, filename: 'ramen2.jpg')


r20 = Review.create(body: 'Super cute! Boyfriend loves it a lot ^^', 
author_id: u21.id, product_id: p8.id, rating: 4)

r21 = Review.create(body: 'I didn\'t realize the material would be so thick and durable. It has a nice matte feel to it that I also love with my stickers. Definitely worth the money, and I love the cute design!!!', 
author_id: u22.id, product_id: p8.id, rating: 4)




p9 = Product.create(name:'Overwatch Logo Coaster', description: "Collector coaster of the Overwatch Logo. Approximate size is 4.25 inch diameter. Machined on black polymer plastic with a white core and hand painted with enamel in orange.",
      price: 5.00, seller_id: u18.id, category_id: 22)


file143 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ow1.jpg')

p9.photos.attach(io: file143, filename: 'ow1.jpg')




p10 = Product.create(name:'Vinyl Waterproof Animal Crossing Sticker', description: "In anticipation for the new animal crossing game, I made this calming~ sticker based off my own town in acnl! Animal crossing is one of my favorite games and i want to share all the aspects I love to you guys <3
", price: 6.00, seller_id: u18.id, category_id: 22)


file133 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/animalcrossing1.jpg')
file134 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/animalcrossing2.jpg')
file135 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/animalcrossing3.jpg')

p10.photos.attach(io: file133, filename: 'animalcrossing1.jpg')
p10.photos.attach(io: file134, filename: 'animalcrossing2.jpg')
p10.photos.attach(io: file135, filename: 'animalcrossing3.jpg')


r22 = Review.create(body: 'The bundled leaves are too cute. Thank you! :) ^^', 
author_id: u2.id, product_id: p10.id, rating: 4)

r23 = Review.create(body: 'Definitely worth the money, and I love the cute design!!!', 
author_id: u28.id, product_id: p10.id, rating: 5)







p11 = Product.create(name:'Pokemon Bulbasaur Ivysaur Venusaur Perler', description: "Everything is glued and packed very carefully in a box so you don't have to do anything when you receive your plant. All you have to do is enjoy it :)", 
    price: 12.89, seller_id: u4.id, category_id: 22)


file152 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeperler1.jpg')
file153 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeperler2.jpg')


p11.photos.attach(io: file152, filename: 'pokeperler1.jpg')
p11.photos.attach(io: file153, filename: 'pokeperler2.jpg')






p13 = Product.create(name:'Legend of Zelda Triforce Stud Earring Set - Gold Plated & Premium Steel', description: "Fancy the Power of the legendary Triforce? Well, that's exactly the opportunity you have before you with this beautiful steel Triforce earrings. Premium Stainless Steel 316L Triforce earrings, depicting the three triangles of power, giving you Wisdom, Power, and Courage!", 
    price: 19.89, seller_id: u26.id, category_id: 22)


file140 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/triforce1.jpg')
file141 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/triforce2.jpg')
file142 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/triforce3.jpg')

p13.photos.attach(io: file140, filename: 'triforce1.jpg')
p13.photos.attach(io: file141, filename: 'triforce2.jpg')
p13.photos.attach(io: file142, filename: 'triforce3.jpg')





p14 = Product.create(name:'My Hero Academia Froppy TSUYU Chan Large Hard Enamel Pin, MHA, Tsuyu Asui, Green Frog Raincoat Pin, Kawaii Anime', description: "★ Hard enamel pin
★ 1.97in / 50mm
★ Gold plating
★ 2 rubber clutches
★ Illustrated backing card included", price: 8.82, seller_id: u27.id, category_id: 22)


file131 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy1.jpg')
file132 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy2.jpg')
file133 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy2.jpg')

p14.photos.attach(io: file131, filename: 'froggy1.jpg')
p14.photos.attach(io: file132, filename: 'froggy2.jpg')
p14.photos.attach(io: file133, filename: 'froggy3.jpg')





p15 = Product.create(name:'League of Legends - Dj Sona LED panel for Cosplay - costume prop video game gift', description: "Up for sale is a flexible led panel that is programmed to imitate Dj Sona's animation from league of legend", 
    price: 182.61, seller_id: u18.id, category_id: 22)


file160 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/sona1.jpg')
file161 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/sona2.jpg')

p15.photos.attach(io: file160, filename: 'sona1.jpg')
p15.photos.attach(io: file161, filename: 'sona2.jpg')




p16 = Product.create(name:'Kirby X Sailor Moon Enamel Pin', description: "The pin will be lovingly packaged on a cute backing card and sealed to protect the pin during delivery.", 
    price: 10.74, seller_id: u21.id, category_id: 22)


file162 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby1.jpg')
file163 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby2.jpg')
file164 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby3.jpg')

p16.photos.attach(io: file162, filename: 'kirby1.jpg')
p16.photos.attach(io: file163, filename: 'kirby2.jpg')
p16.photos.attach(io: file164, filename: 'kirby3.jpg')






p17 = Product.create(name:'One Piece - Iron On Patch', description: "onepiecee", 
    price: 5.00, seller_id: u7.id, category_id: 22)


file150 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepiece1.jpg')
file151 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepiece2.jpg')


p17.photos.attach(io: file150, filename: 'onepiece1.jpg')
p17.photos.attach(io: file151, filename: 'onepiece2.jpg')





p18 = Product.create(name:'One Punch Man Mug, Anime, Anime Mug', description: "No returns or exchanges
But please contact me if you have any problems with your order.", price: 15.00, seller_id: u11.id, category_id: 22)


file136 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepunch1.jpg')
file137 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepunch2.jpg')

p18.photos.attach(io: file136, filename: 'onepunch1.jpg')
p18.photos.attach(io: file137, filename: 'onepunch2.jpg')





p19 = Product.create(name:'Cute Sleeping Corgi T-Shirt Corgi Shirt Gift For Dog Lovers Soft Cotton Dog Owner Tee Top ', description: "Printed using direct to garment printing process, for enhanced quality and durability.", 
    price:23.61, seller_id: u9.id, category_id: 22)


file154 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt1.jpg')
file155 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt2.jpg')
file156 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt3.jpg')


p19.photos.attach(io: file154, filename: 'corgishirt1.jpg')
p19.photos.attach(io: file155, filename: 'corgishirt2.jpg')
p19.photos.attach(io: file156, filename: 'corgishirt3.jpg')




p20 = Product.create(name:'spongebob pin Patrick Star pin anime enamel pins enamel pins enamel pin ', description: "If you are a fan of anime or culture around it this is a great silly mug for you, or a great gift for any of your friends that are interested in internet culture.", 
    price: 11.00, seller_id: u26.id, category_id: 22)


file157 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/patrick1.jpg')


p20.photos.attach(io: file157, filename: 'patrick1.jpg')






p21 = Product.create(name:'Cute UwU Mug', description: "Printed using direct to garment printing process, for enhanced quality and durability.", 
    price:23.61, seller_id: u8.id, category_id: 22)


file158 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/uwu1.jpg')
file159 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/uwu2.jpg')


p21.photos.attach(io: file158, filename: 'uwu1.jpg')
p21.photos.attach(io: file159, filename: 'uwu2.jpg')



p22 = Product.create(name:'Green Frog Meme, Meme pin, Sad Pepe Meme Pin Brooch', description: "This Sad Pepe meme enamel pin ships world wide.", 
    price: 7.61, seller_id: u28.id, category_id: 22)


file144 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe1.jpg')
file145 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe2.jpg')
file146 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe3.jpg')

p22.photos.attach(io: file144, filename: 'pepe1.jpg')
p22.photos.attach(io: file145, filename: 'pepe2.jpg')
p22.photos.attach(io: file146, filename: 'pepe3.jpg')





p23 = Product.create(name:'This Is Fine Dog Meme Cross Stitch Pattern', description: "If this dog can accept his fate and weather the storm, why can't you?!", 
    price: 5.61, seller_id: u12.id, category_id: 22)


file147 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/thisisfine1.jpg')
file148 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/thisisfine2.jpg')

p23.photos.attach(io: file147, filename: 'thisisfine1.jpg')
p23.photos.attach(io: file148, filename: 'thisisfine2.jpg')




p24 = Product.create(name:'You\'re My National Treasure Mug - Nicolas Cage Meme Coffee Mug, Funny Nic Cage', description: "Best Seller! Original Nicolas Cage You\'re My National Treasure design printed on both sides. Makes the perfect Valentine's day gift for your meme-loving significant other.", 
    price: 15.72, seller_id: u29.id, category_id: 22)


file165 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage1.jpg')
file166 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage2.jpg')
file167 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage3.jpg')

p24.photos.attach(io: file165, filename: 'cage1.jpg')
p24.photos.attach(io: file166, filename: 'cage2.jpg')
p24.photos.attach(io: file167, filename: 'cage3.jpg')





p25 = Product.create(name:'Michael Scott Sequin Pillow | The Office TV Show | 16 x 16 inches | Mermaid Pillow | Meme Gift', description: "Michael Scott Sequin Pillow. Free U.S. Shipping. U.S. delivery takes 2 - 5 days. Processing Time: 1 - 2 business days.", 
    price: 18.00, seller_id: u13.id, category_id: 22)


file168 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/office1.jpg')
file169 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/office2.jpg')

p25.photos.attach(io: file168, filename: 'office1.jpg')
p25.photos.attach(io: file169, filename: 'office2.jpg')








p26 = Product.create(name:'Doodlebob Spongebob Embroidery Hoop', description: "MIHOY MINOYYYY", 
    price: 15.00, seller_id: u17.id, category_id: 22)


file170 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/mihoy1.jpg')
file171 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/mihoy2.jpg')

p26.photos.attach(io: file170, filename: 'mihoy1.jpg')
p26.photos.attach(io: file171, filename: 'mihoy2.jpg')







p27 = Product.create(name:'Kawaii Watercolor Miyazaki Totoro Japanese Anime Ghibli Posters Prints', description: "Studio Ghibli", 
    price: 7.86, seller_id: u22.id, category_id: 22)


file172 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli11.jpg')
file173 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli12.jpg')
file174 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli13.jpg')

p27.photos.attach(io: file172, filename: 'ghibli11.jpg')
p27.photos.attach(io: file173, filename: 'ghibli12.jpg')
p27.photos.attach(io: file174, filename: 'ghibli13.jpg')




p28 = Product.create(name:'NEW My Hero Academia Double-Sided Pillow Plush', description: "How cute are these chibi cat My Hero Academia characters? Made with extra soft and squishy material to meet all your cuddle time needs!", 
    price: 23.37, seller_id: u46.id, category_id: 22)


file175 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/heropillow1.jpg')
file176 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/heropillow2.jpg')
file177 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/heropillow3.jpg')
file178 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/heropillow4.jpg')
file179 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/heropillow5.jpg')

p28.photos.attach(io: file175, filename: 'heropillow1.jpg')
p28.photos.attach(io: file176, filename: 'heropillow2.jpg')
p28.photos.attach(io: file177, filename: 'heropillow3.jpg')
p28.photos.attach(io: file178, filename: 'heropillow4.jpg')
p28.photos.attach(io: file179, filename: 'heropillow5.jpg')



r111 = Review.create(body: 'Super cute!! Bought them for my best friend and he loves them!!!', 
author_id: u28.id, product_id: p28.id, rating: 5)

r112 = Review.create(body: 'really cute! the textures well done.', 
author_id: u7.id, product_id: p28.id, rating: 5)

r113 = Review.create(body: 'My daughter LOVED this pillow!', 
author_id: u36.id, product_id: p28.id, rating: 5)





p29 = Product.create(name:'Boku No Hero Academia X Animal Crossing (Deku Squad) Waterproof Vinyl Stickers', description: "Absolutely adorable Boku No Hero Academia X Animal Crossing crossover vinyl stickers featuring Deku Squad and All Might!", 
    price: 2.00, seller_id: u31.id, category_id: 22)

file180 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker1.jpg')
file181 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker2.jpg')
file182 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker3.jpg')
file183 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker4.jpg')
file184 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker5.jpg')
file185 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/herosticker6.jpg')


p29.photos.attach(io: file180, filename: 'herosticker1.jpg')
p29.photos.attach(io: file181, filename: 'herosticker2.jpg')
p29.photos.attach(io: file182, filename: 'herosticker3.jpg')
p29.photos.attach(io: file183, filename: 'herosticker4.jpg')
p29.photos.attach(io: file184, filename: 'herosticker5.jpg')
p29.photos.attach(io: file185, filename: 'herosticker6.jpg')


r114 = Review.create(body: 'So cute and so perfect!', 
author_id: u29.id, product_id: p29.id, rating: 5)

r115 = Review.create(body: 'These are so cute! They went right on my laptop. The rest I will use for resin crafts! Thanks!', 
author_id: u346.id, product_id: p29.id, rating: 4)

r116 = Review.create(body: 'Super cute and excellent quality!', 
author_id: u16.id, product_id: p29.id, rating: 5)




p30 = Product.create(name:'Large Magikarp Plush', description: "ミ☆ Magikarp Plush ミ☆\n
🎏🐟💧🌊 Magikarp used splash! But nothing happened! 🎏🐟💧🌊\n
💕✨ Perfect for collecting or cosplaying!\,
✂️✨ This plush is machine-sewn, with hand-stitched details and made entirely of fleece and filled with polyester stuffing.", 
    price: 80.00, seller_id: u22.id, category_id: 22)


file186 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/magikarp1.jpg')
file187 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/magikarp2.jpg')
file188 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/magikarp3.jpg')

p30.photos.attach(io: file186, filename: 'magikarp1.jpg')
p30.photos.attach(io: file187, filename: 'magikarp2.jpg')
p30.photos.attach(io: file188, filename: 'magikarp3.jpg')


r117 = Review.create(body: 'Wonderful quality, welcome addition to our collection of pokemon plushes (and the first shiny to grace them! :D )', 
author_id: u12.id, product_id: p30.id, rating: 5)

r118 = Review.create(body: 'These are super cute!! Was a little late coming in but it was made up for. Really happy with them', 
author_id: u11.id, product_id: p30.id, rating: 4)

r119 = Review.create(body: 'Arrived in a timely manner and the quality is fantastic ♪', 
author_id: u18.id, product_id: p30.id, rating: 4)




p31 = Product.create(name:'Pokemon/Pet Watercolour Commission with Simple Background ( CUSTOM ORDER )', description: "**Pokemon/Pet Watercolour Commission with Simple Background ( CUSTOM ORDER )**
YOU and your beloved pet or pokemon cute anime style !", 
    price: 40.00, seller_id: u32.id, category_id: 22)


file189 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokeillust1.jpg')
file190 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokeillust2.jpg')
file191 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokeillust3.jpg')

p31.photos.attach(io: file189, filename: 'pokeillust1.jpg')
p31.photos.attach(io: file190, filename: 'pokeillust2.jpg')
p31.photos.attach(io: file191, filename: 'pokeillust3.jpg')


r120 = Review.create(body: 'I ordered this as a Valentine\'s gift for my boyfriend and it came out so beautiful! He loves it, I got it framed and he now keeps it on his desk :) ', 
author_id: u30.id, product_id: p31.id, rating: 4)

r121 = Review.create(body: 'I loved my final product! The artist was very friendly and open to my request. It even arrived earlier than expected!', 
author_id: u40.id, product_id: p31.id, rating: 5)

r122 = Review.create(body: 'Amazing quality and fast, personalized service. Thanks!!', 
author_id: u50.id, product_id: p31.id, rating: 4)




p32 = Product.create(name:'SMOKU Fighting x Smoking Collab Custom Vinyl Sticker, Limited Edition Sticker, Stickers, Vinyl Stickers, Custom Stickers, Laptop Sticker', description: "- 1x Custom Vinyl Sticker\n
- Limited Edition Custom Design\n
- Each Sticker measures roughly between 3-4 Inches\n
- Highest Quality Possible", 
price: 1.99, seller_id: u21.id, category_id: 22)

file192 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/goku1.jpg')
file193 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/goku2.jpg')

p32.photos.attach(io: file192, filename: 'goku1.jpg')
p32.photos.attach(io: file193, filename: 'goku2.jpg')

r123 = Review.create(body: 'The stickers are hilarious and definitely worth the wait!', 
author_id: u19.id, product_id: p32.id, rating: 4)

r124 = Review.create(body: 'Great sticker, was a gift to my friend and they loved it', 
author_id: u29.id, product_id: p32.id, rating: 5)





p33 = Product.create(name:'Plus Ultra Hoodie, Manga My Hero Academia Shirt - BNHA, Unisex Anime Hoodie', description: "All of our items are made on-demand especially for you. Designs are vinyl printed onto high quality 100% cotton t-shirts.", 
    price: 28.14, seller_id: u11.id, category_id: 22)

file194 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/plusultra1.jpg')
file195 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/plusultra2.jpg')

p33.photos.attach(io: file194, filename: 'plusultra1.jpg')
p33.photos.attach(io: file195, filename: 'plusultra2.jpg')


r125 = Review.create(body: 'Did not ship on time but looks amazing, my boyfriend loved it', 
author_id: u39.id, product_id: p33.id, rating: 5)

r126 = Review.create(body: 'Shipment came in ahead of schedule. Excellent quality. Hoodie is very very soft.', 
author_id: u13.id, product_id: p33.id, rating: 4)

r127 = Review.create(body: 'Shipment came in ahead of schedule. Excellent quality. Hoodie is very very soft.', 
author_id: u33.id, product_id: p33.id, rating: 5)




p34 = Product.create(name:'Mob Psycho 100 anime Psycho Helmet Cult Poster Unisex 2 colors | 100% cotton T-shirt', description: "T-shirt with the comic design of the Psycho Helmet Club 'Looking for god' poster from the famous anime Mob Psycho 100 in Japanese writing.", 
    price: 16.89, seller_id: u25.id, category_id: 22)

file196 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mobpsycho1.jpg')
file197 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mobpsycho2.jpg')

p34.photos.attach(io: file196, filename: 'mobpsycho1.jpg')
p34.photos.attach(io: file197, filename: 'mobpsycho2.jpg')

r128 = Review.create(body: 'Exactly what I hoped for and showed up after only a couple days of ordering it.', 
author_id: u39.id, product_id: p34.id, rating: 5)





p35 = Product.create(name:'Casual Weeb UwU Decal, Japan Inspired, Weeaboo Vinyl Decal, Laptop Sticker, Car Decal.', description: "I watch a lot of anime, it's no big deal..... You know.... We have a matching tee.... just sayin' (´・ω・`)", 
    price: 4.49, seller_id: u21.id, category_id: 22)


file198 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/weebsticker1.jpg')
p35.photos.attach(io: file198, filename: 'weebsticker1.jpg')

r129 = Review.create(body: 'Looks amazing but the sticker was a little hard to install it kept sticking to its self instead of the glass', 
author_id: u45.id, product_id: p35.id, rating: 3)

r130 = Review.create(body: 'LOVE IT! FAST SHIPPING. QUALITY! EASY APPLICATION! UWU ✨', 
author_id: u27.id, product_id: p35.id, rating: 5)




p36 = Product.create(name:'Studio Ghibli No-Face Spirited Away Vinyl Sticker Decal, 2 Sizes, Waterproof & Weatherproof Durable Anime Sticker, FREE SHIPPING!', description: "Channel your inner No-Face with this adorable vinyl sticker illustrated by me!", 
    price: 3.49, seller_id: u50.id, category_id: 22)

file199 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/noface11.jpg')
file200 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/noface12.jpg')
p36.photos.attach(io: file199, filename: 'noface11.jpg')
p36.photos.attach(io: file200, filename: 'noface12.jpg')

r131 = Review.create(body: 'So cute and detailed! Looks great on my car.', 
author_id: u31.id, product_id: p36.id, rating: 5)





p37 = Product.create(name:'Hatsune Miku keycaps - Clay and resin keycap Cherry MX Mechanical Gaming Keyboards', description: "Perfect gift for a Hatsune Miku fan!", 
    price: 14.99, seller_id: u11.id, category_id: 22)

file201 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey1.jpg')
file202 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey2.jpg')
file203 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey3.jpg')

p37.photos.attach(io: 201, filename: 'mikukey1.jpg')
p37.photos.attach(io: 202, filename: 'mikukey2.jpg')
p37.photos.attach(io: 203, filename: 'mikukey3.jpg')

r132 = Review.create(body: 'So cute and detailed! Perfect addition to my keycap collection', 
author_id: u17.id, product_id: p37.id, rating: 5)




p38 = Product.create(name:'Noface Keycap', description: "When I was a child, I felt in love with the Little White Totoro character in My Neighbor Totoro, a Japanese animation movie. He is a cute and amazing figure that burns in to my mind. That is why I want to make Little White Totoro keycaps. I hope this keycap would bring lovely memory about that sweet animated film.", 
    price: 49.00, seller_id: u41.id, category_id: 22)

file204 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey1.jpg')
file205 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey2.jpg')
file206 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey3.jpg')

p38.photos.attach(io: 204, filename: 'nofacekey1.jpg')
p38.photos.attach(io: 205, filename: 'nofacekey2.jpg')
p38.photos.attach(io: 206, filename: 'nofacekey3.jpg')

r133 = Review.create(body: 'Gorgeous!!! This took a long time to ship, but it was definitely worth the wait. Nice packaging, incredible detail and quality.', 
author_id: u37.id, product_id: p38.id, rating: 5)

r134 = Review.create(body: 'Absolutely love it! So adorable! It looks even cooler when with the blue light shines through it from my keyboard!', 
author_id: u45.id, product_id: p38.id, rating: 5)







p39 = Product.create(name:'EVA(新世紀エヴァンゲリオン) NERV logo inspired keycap for mechanical keyboard', description: "Inspired by NERV order from 新世紀エヴァンゲリオン\n
This is a R4(keyboard area including ESC,F1-F12,etc) keycap that best performance on cherry MX keyboards. Please note it cannot use on membrane keyboards.", 
    price: 18.00, seller_id: u33.id, category_id: 22)

file207 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey1.jpg')
file208 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey2.jpg')

p39.photos.attach(io: 207, filename: 'evakey1.jpg')
p39.photos.attach(io: 208, filename: 'evakey2.jpg')


r135 = Review.create(body: 'Excellent quality! The packaging and the keycap itself is very good.', 
author_id: u1.id, product_id: p39.id, rating: 5)

r136 = Review.create(body: 'quick easy and communicative, keycaps were made well', 
author_id: u2.id, product_id: p39.id, rating: 3)







p40 = Product.create(name:'Neon Genesis Evangelion - Asuka and Rei 3" Acrylic Charm (Double Sided)', description: "Originally designed artwork of Asuka and Rei from the classic anime, "Neon Genesis Evangelion" by GAINAX.
\nPrinted professionally on 3mm acrylic, each charm is 3 inches in height not including the metal keyring chain.", 
    price: 14.00, seller_id: u44.id, category_id: 22)

file209 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey1.jpg')
file210 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey2.jpg')
file211 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey3.jpg')
file212 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey4.jpg')

p40.photos.attach(io: 209, filename: 'evakey1.jpg')
p40.photos.attach(io: 210, filename: 'evakey2.jpg')
p40.photos.attach(io: 211, filename: 'evakey3.jpg')
p40.photos.attach(io: 212, filename: 'evakey4.jpg')


r137 = Review.create(body: 'So obsessed with this charm!! Super cute love this anime so much', 
author_id: u3.id, product_id: p40.id, rating: 5)

r138 = Review.create(body: 'Amazing! Thank you so much for adding more so I could purchase this for my husband. He\'s going to love it!', 
author_id: u4.id, product_id: p40.id, rating: 3)





p41 = Product.create(name:'Painted Premium (Limited Edition) Bandai MG 1/100 "Altron Gundam EW"', description: 'This one is an order-placing item. *Premium Bandai item is more expensive than the normal ones.*\n
The name of this kit: Premium (Limited Edition) Bandai MG 1/100 "Altron Gundam EW"', 
    price: 375.28, seller_id: u50.id, category_id: 22)

file213 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron1.jpg')
file214 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron2.jpg')
file215 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron3.jpg')
file216 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron4.jpg')

p41.photos.attach(io: 213, filename: 'altron1.jpg')
p41.photos.attach(io: 214, filename: 'altron2.jpg')
p41.photos.attach(io: 215, filename: 'altron3.jpg')
p41.photos.attach(io: 216, filename: 'altron4.jpg')


r139 = Review.create(body: 'Just simply amazing craftsmanship. Even better communication throughout the whole process. In awe of the paintwork and will definitely order again.', 
author_id: u5.id, product_id: p41.id, rating: 5)

r140 = Review.create(body: 'Perfect!, good quality and communication.', 
author_id: u6.id, product_id: p41.id, rating: 3)




p42 = Product.create(name:'Your Name - Kimi no Na wa Limited Edition Poster Print', description: "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. But things become even more complicated when the boy and girl decide to meet in person. \n 
A3 -High Quality Production digital Press Print 350 GSM (*buisness card thickness)", 
    price: 12.79, seller_id: u49.id, category_id: 22)

file217 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yourname1.jpg')

p42.photos.attach(io: 217, filename: 'yourname1.jpg')

r141 = Review.create(body: 'Beauitful print.  The artwork is great and will definitely order again.', 
author_id: u7.id, product_id: p42.id, rating: 5)




p43 = Product.create(name:'Finn the Human and Jake the Dog Adventure Time Plush', description: "Handmade crochet inspired Finn the Human and Jake the Dog \n
Finn and Jake are a must have for any fan of the show 'Adventure Time'!\n
After watching the show I had to make one for myself. These guys are so soft and cuddly!", 
    price: 35.00, seller_id: u48.id, category_id: 22)

file218 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake1.jpg')
file219 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake2.jpg')
file220 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake3.jpg')
file221 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake4.jpg')

p43.photos.attach(io: 218, filename: 'finnjake1.jpg')
p43.photos.attach(io: 219, filename: 'finnjake2.jpg')
p43.photos.attach(io: 220, filename: 'finnjake3.jpg')
p43.photos.attach(io: 221, filename: 'finnjake4.jpg')


r142 = Review.create(body: 'Very well made! Impressive.', 
author_id: u8.id, product_id: p43.id, rating: 5)

r143 = Review.create(body: 'Impressively well made with every stitch in its place. It\'s hard to explain the effect such skilled handiwork has in person, but it is just perfect. Makes the little fellow even cuter. Also, he\'s a great size for cuddling.', 
author_id: u9.id, product_id: p43.id, rating: 5)







p44 = Product.create(name:'Bubbline | Hard Enamel Pin | Adventure Time Marceline Bubblegum lapel pin', description: "Hard enamel pin featuring Princess Bubblegum and Marceline the vampire queen from Adventure Time", 
    price: 12.38, seller_id: u47.id, category_id: 22)

file222 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bubbeline1.jpg')
file223 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bubbeline2.jpg')


p44.photos.attach(io: 222, filename: 'bubbeline1.jpg')
p44.photos.attach(io: 223, filename: 'bubbeline2.jpg')

r144 = Review.create(body: 'came in the most beautiful packaging! the pin is perfect too ♡', 
author_id: u9.id, product_id: p44.id, rating: 5)

r145 = Review.create(body: 'The quality of this pin was amazing and it\'s a stunning little piece of art!',
author_id: u10.id, product_id: p44.id, rating: 5)

r146 = Review.create(body: 'Really beautiful design and excellent quality! Thank you!',
author_id: u11.id, product_id: p44.id, rating: 4)






p45 = Product.create(name:'Legend of Korra - Korra and Asami: "Celebrate" Print', description: "Dimensions:\n
- 9 x 12 Inches.\n
- Matte, ultra smooth Photographic print.\n
Photographic Art Print:", 
    price: 15.00, seller_id: u46.id, category_id: 22)

file224 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/korrasami1.jpg')


p45.photos.attach(io: 224, filename: 'korrasami1.jpg')

r147 = Review.create(body: 'Got this for a friend\'s birthday and she was thrilled! Very fast shipping too! :D', 
author_id: u12.id, product_id: p45.id, rating: 5)

r148 = Review.create(body: 'My package arrived not only quickly, but safely thanks to the care taken with the packaging! <3 Which is wonderful, because the art inside is absolutely amazing.',
author_id: u13.id, product_id: p45.id, rating: 5)

r149 = Review.create(body: 'Beautiful and Quick to ship out! Thank you <3',
author_id: u14.id, product_id: p45.id, rating: 4)







p46 = Product.create(name:'Adventure Time: Lumpy Space Princess Soft Enamel Pin', description: "Celebrate your favorite Adventure Time characters with our custom enamel pin perfect for your back pack, jacket, t-shirt, hat, or other apparel and accessories. Our high quality enamel pins are made with a black nickel backing with double needles. It comes with two rubber guards to keep your pin safely attached to your accessories.", 
    price: 9.59, seller_id: u45.id, category_id: 22)

file225 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp1.jpg')
file226 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp2.jpg')
file227 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp3.jpg')


p46.photos.attach(io: 225, filename: 'lsp1.jpg')
p46.photos.attach(io: 226, filename: 'lsp2.jpg')
p46.photos.attach(io: 227, filename: 'lsp3.jpg')

r150 = Review.create(body: 'Nice design but shipping was a bit slow.', 
author_id: u15.id, product_id: p46.id, rating: 3)

r151 = Review.create(body: 'Love it!! :)',
author_id: u16.id, product_id: p46.id, rating: 5)

r152 = Review.create(body: 'Great Pin',
author_id: u17.id, product_id: p46.id, rating: 4)

r153 = Review.create(body: '',
author_id: u18.id, product_id: p46.id, rating: 4)






p47 = Product.create(name:'Yare Yare Daze Anime Hoodie - Anime Streetwear Aesthetic', description: "Yare Yare, here we go again.\n
The design has a wordplay on the word yare, wich is place on top another yare. The kanji says yare yare daze.\n
(づ｡◕‿‿◕｡)づ",
    price: 35.95, seller_id: u46.id, category_id: 22)

file228 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie1.jpg')
file229 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie2.jpg')
file230 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie3.jpg')
file231 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie4.jpg')



p47.photos.attach(io: 228, filename: 'jojohoodie1.jpg')
p47.photos.attach(io: 229, filename: 'jojohoodie2.jpg')
p47.photos.attach(io: 230, filename: 'jojohoodie3.jpg')
p47.photos.attach(io: 231, filename: 'jojohoodie4.jpg')

r154 = Review.create(body: 'Size is a lot smaller than expected', 
author_id: u19.id, product_id: p47.id, rating: 3)

r155 = Review.create(body: 'Shipped quickly. In great condition. Thank you!',
author_id: u20.id, product_id: p47.id, rating: 5)

r156 = Review.create(body: '',
author_id: u21.id, product_id: p47.id, rating: 4)

r157 = Review.create(body: 'Perfect gift for my best friend! :)',
author_id: u22.id, product_id: p47.id, rating: 5)







p47 = Product.create(name:'Double Sided Inuyasha Keychain', description: "A cute little dual sided acrylic keychain featuring my art.",
    price: 35.95, seller_id: u45.id, category_id: 22)

file232 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha1.jpg')
file233 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha2.jpg')
file234 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha3.jpg')



p47.photos.attach(io: 232, filename: 'inuyasha1.jpg')
p47.photos.attach(io: 233, filename: 'inuyasha2.jpg')
p47.photos.attach(io: 234, filename: 'inuyasha3.jpg')

r158 = Review.create(body: 'I\'m a big fan of Inuyasha x Kagome and of acrylic keychains, so I think this is a wonderful keychain! I love it. The double sided nature of the artwork is super cute and gives the charm a lot of personality and the longer chain plus simple silver clasp compliment it nicer than say, the shorter rose-gold clasps that you often see on acrylic charms. The artwork has a layer of epoxy covering it on the side it was printed onto, so it\'s protected from being scratched off if it\'s on a key ring. It arrived fast and my overall buying experience was great.', 
author_id: u23.id, product_id: p47.id, rating: 5)

r159 = Review.create(body: 'Love love love!! Will use this store again!',
author_id: u24.id, product_id: p47.id, rating: 5)

r160 = Review.create(body: 'Just as expected! Love it!',
author_id: u25.id, product_id: p47.id, rating: 4)







p48 = Product.create(name:'Aesthetic Cowboy Bebop || Anime Vinyl Sticker', description: "Aesthetic Graphic Design of Spike from Cowboy Bebop! \n
• A great sticker for your laptop, phone, skateboard, hydroflask, car, etc.",
    price: 4.99, seller_id: u44.id, category_id: 22)

file235 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cowboybebop1.jpg')

p48.photos.attach(io: 235, filename: 'cowboybebop1.jpg')


r161 = Review.create(body: 'Absolutely stunning! The sticker quality is fantastic and the design, flawless.',
author_id: u26.id, product_id: p48.id, rating: 5)

r162 = Review.create(body: 'so eye catching! looks nice on my laptop case',
author_id: u27.id, product_id: p48.id, rating: 4)




p49 = Product.create(name:'Ryuko Kill la Kill Double Sided Acrylic Charms 1.5"', description: "Charms cut out of clear acrylic. Very durable, water resistant and sealed with gloss! All keychains includes a split ring with a choice of: star, heart or silver chain.",
    price: 12.00, seller_id: u43.id, category_id: 22)

file236 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/klk1.jpg')

p49.photos.attach(io: 236, filename: 'klk1.jpg')

r163 = Review.create(body: 'Came with the perfect sticker as a bonus! I love it !',
author_id: u28.id, product_id: p49.id, rating: 4)




p50 = Product.create(name:'symphogear holographic sticker', description: "a design based on s1e13 of senki zesshou symphogear 👊",
    price: 4.00, seller_id: u42.id, category_id: 22)

file237 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/symphogear1.jpg')
file238 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/symphogear2.jpg')

p50.photos.attach(io: 237, filename: 'symphogear1.jpg')
p50.photos.attach(io: 238, filename: 'symphogear2.jpg')

r164 = Review.create(body: 'Cute! Boyfriend loved it',
author_id: u29.id, product_id: p50.id, rating: 4)

r165 = Review.create(body: 'Wonderful sticker. Love the artwork and will purchase from them again',
author_id: u30.id, product_id: p50.id, rating: 5)

r166 = Review.create(body: 'I love it! Thank you for the other two stickers as well. They were very cute.',
author_id: u31.id, product_id: p50.id, rating: 5)





p50 = Product.create(name:'Attack on Titan Backpack', description: "The perfect backpack for any Attack on Titan fan! Made from premium quality material, this bag will help you carry your things in style.",
    price: 24.00, seller_id: u41.id, category_id: 22)

file239 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk1.jpg')
file240 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk2.jpg')
file241 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk3.jpg')
file242 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk4.jpg')
file243 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk5.jpg')

p50.photos.attach(io: 239, filename: 'snk1.jpg')
p50.photos.attach(io: 240, filename: 'snk2.jpg')
p50.photos.attach(io: 241, filename: 'snk3.jpg')
p50.photos.attach(io: 242, filename: 'snk4.jpg')
p50.photos.attach(io: 243, filename: 'snk5.jpg')

r167 = Review.create(body: 'Amazing backpack! I love SNK!! YAAAAAAA',
author_id: u32.id, product_id: p50.id, rating: 4)

r168 = Review.create(body: 'MIKASA IS MY WAIFU',
author_id: u33.id, product_id: p50.id, rating: 5)

r169 = Review.create(body: 'Nice backpack, holds a lot of stuff',
author_id: u34.id, product_id: p50.id, rating: 5)






p51 = Product.create(name:'Polymer Clay Umaru -Chan Chibi Figurine Keychain or Bagcharm. Anime chibi figurine. Polymer Clay chibi', description: "İt inspired Umaru-Chan who is a *character in anime Himouto",
    price: 35.00, seller_id: u40.id, category_id: 22)

file244 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/umaru1.jpg')


p51.photos.attach(io: 244, filename: 'umaru1.jpg')


r170 = Review.create(body: 'Great attention to detail and a pleasure to work with!',
author_id: u32.id, product_id: p51.id, rating: 4)





p52 = Product.create(name:'Millenium Puzzle: Yu-Gi-Oh', description: "Absolutely lovely prop for Y'all trading card fans!\n
Can be used for some cosplay or just to have on your desk. It'll look fantastic anywhere.",
    price: 20.00, seller_id: u39.id, category_id: 22)

file245 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh1.jpg')
file246 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh2.jpg')
file247 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh3.jpg')


p52.photos.attach(io: 245, filename: 'yugioh1.jpg')
p52.photos.attach(io: 246, filename: 'yugioh2.jpg')
p52.photos.attach(io: 247, filename: 'yugioh3.jpg')


r171 = Review.create(body: 'Omg. My boyfriend’s brother is gonna LOVE THIS. There was some literal technical difficulties, but things happen. I probably would have sent it in a box, but it was still nicely bubble-wrapped and item appeared perfectly fine. Definitely still worth the wait, and I’m super psyched to give to him today. 😁',
author_id: u33.id, product_id: p52.id, rating: 5)

r172 = Review.create(body: 'Met all of my expectations and more! This was a gift from someone special and they were ecstatic to receive it. Well done, great quality!',
author_id: u34.id, product_id: p52.id, rating: 4)





p53 = Product.create(name:'MLP Applejack plush', description: "Adorable Applejack plushie from the show My Little Pony",
    price: 20.00, seller_id: u39.id, category_id: 22)

file248 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack1.jpg')
file249 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack2.jpg')
file250 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack3.jpg')
file251 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack4.jpg')



p53.photos.attach(io: 248, filename: 'applejack1.jpg')
p53.photos.attach(io: 249, filename: 'applejack2.jpg')
p53.photos.attach(io: 250, filename: 'applejack3.jpg')
p53.photos.attach(io: 251, filename: 'applejack4.jpg')



r173 = Review.create(body: 'Exactly what I expected. High-quality product, perfectly suits to XL Starlight Glimmer plushie. She looks great with them! And all this at a reasonable price.',
author_id: u35.id, product_id: p53.id, rating: 5)

r174 = Review.create(body: 'APPLE JACK IS BEST PONY!! ',
author_id: u36.id, product_id: p53.id, rating: 4)

r175 = Review.create(body: 'wrong. pinkie pie is best pony',
author_id: u37.id, product_id: p53.id, rating: 3)

r176 = Review.create(body: 'FLUTTERSHY FTW!!!',
author_id: u38.id, product_id: p53.id, rating: 4)







p54 = Product.create(name:'Japanese Peach Soft Drink - T-Shirt/Shirt/Top/Tee - Aesthetic T-Shirt,Japanese Shirt,Aesthetic,Aesthetic Clothing,Japanese t-shirt,Japan', description: "Japanese Peach Soft Drink T-Shirt which is made of premium quality ring spun cotton for a great quality soft feel, and comfortable retail fit.",
    price: 21.75, seller_id: u38.id, category_id: 22)

file252 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt1.jpg')
file253 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt2.jpg')
file254 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt3.jpg')
file255 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt4.jpg')



p54.photos.attach(io: 252, filename: 'peachshirt1.jpg')
p54.photos.attach(io: 253, filename: 'peachshirt2.jpg')
p54.photos.attach(io: 254, filename: 'peachshirt3.jpg')
p54.photos.attach(io: 255, filename: 'peachshirt4.jpg')



r177 = Review.create(body: 'The shirt is perfect. The design is actually dyed into the fabric which is much more high quality than the plastic overlay options in my opinion. It’s also not see-through which you can sometimes run the risk of getting with a white shirt. Love it!!',
author_id: u35.id, product_id: p54.id, rating: 5)

r178 = Review.create(body: 'It’s a cool T-shirt but I think it’s a lil expensive 🍑',
author_id: u36.id, product_id: p54.id, rating: 3)

r179 = Review.create(body: 'Lovely T-Shirts, very happy, thank you!',
author_id: u37.id, product_id: p54.id, rating: 4)






p55 = Product.create(name:'Sailor Moon Themed Nintendo Switch Joy Cons', description: "The joy cons feature a high fidelity, custom paint-job on many of the components. It comes with a set of wrist straps matching the overall design.",
    price: 185.74, seller_id: u37.id, category_id: 22)

file256 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon1.jpg')
file257 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon2.jpg')
file258 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon3.jpg')

p55.photos.attach(io: 256, filename: 'switchsailormoon1.jpg')
p55.photos.attach(io: 257, filename: 'switchsailormoon2.jpg')
p55.photos.attach(io: 258, filename: 'switchsailormoon3.jpg')

r180 = Review.create(body: 'These are soooo pretty!! ',
author_id: u38.id, product_id: p55.id, rating: 5)






p56 = Product.create(name:'Shiba Inu Earrings - Hand Painted Wooden Dog Studs with Hypoallergenic Posts', description: "A pair of cute shiba inu earrings engraved from 3mm Cherry wood and hand painted with white detail. These earrings are attached to stainless steel hypoallergenic posts for comfortable wearing and are coated in a satin clear coat to minimise paint scratching.",
    price: 16.63, seller_id: u36.id, category_id: 22)

file259 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibaearring1.jpg')
file260 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibaearring2.jpg')
file261 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibaearring3.jpg')

p56.photos.attach(io: 259, filename: 'shibaearring1.jpg')
p56.photos.attach(io: 260, filename: 'shibaearring2.jpg')
p56.photos.attach(io: 261, filename: 'shibaearring3.jpg')

r181 = Review.create(body: 'These are the cutest earrings that I\'ve ever seen! I love even the small details. Thank you so much! Highly recommended.',
author_id: u37.id, product_id: p56.id, rating: 5)
r182 = Review.create(body: 'Exactly like the pictures! Amazingly cute!',
author_id: u36.id, product_id: p56.id, rating: 5)
r183 = Review.create(body: 'Great quality! Looking forward to giving these away as a present... as hard as it will be as they\'re so cute I want to keep them!',
author_id: u35.id, product_id: p56.id, rating: 5)





p57 = Product.create(name:'Pond cyprinoid keycaps artisan lucky key cap mechanical keyboard cherry mx keycap', description: "Resin keycap with a koi pond design, for cherry mx switches",
    price: 43.00, seller_id: u35.id, category_id: 22)

file262 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/koikey1.jpg')
file263 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/koikey2.jpg')


p57.photos.attach(io: 262, filename: 'koikey1.jpg')
p57.photos.attach(io: 263, filename: 'koikey2.jpg')

r184 = Review.create(body: 'This is a beautiful key! It fits well and is well crafted. The seller packed it extremely well - no chance of damage. Shipping was relatively fast given it was international. Really great transaction! Thank you!',
author_id: u34.id, product_id: p57.id, rating: 5)

r185 = Review.create(body: 'I love it, thank you!',
author_id: u33.id, product_id: p57.id, rating: 5)




p58 = Product.create(name:'Summer Fruit Keycap - Artisan Keycap - Handmade Keycap', description: "Resin keycap with summer fruit design, for cherry mx switches",
    price: 43.00, seller_id: u35.id, category_id: 22)

file264 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey1.jpg')
file265 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey2.jpg')
file266 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey3.jpg')


p58.photos.attach(io: 264, filename: 'fruitkey1.jpg')
p58.photos.attach(io: 265, filename: 'fruitkey2.jpg')
p58.photos.attach(io: 266, filename: 'fruitkey3.jpg')

r186 = Review.create(body: 'Beautiful keycaps, great communication with seller.',
author_id: u32.id, product_id: p58.id, rating: 5)

r187 = Review.create(body: 'Fantastic details & couldn\'t be happier. I\'m only buying keycaps from this store. When I first ordered 4 keycaps & received them (in an extremely ornate box / design) I immediately ordered 5 more. ',
author_id: u31.id, product_id: p58.id, rating: 5)







p59 = Product.create(name:'Deep Sea Jellyfish handmade resin artisan Cherry MX keycap', description: "Handmade Resin Keycap For Cherry MX Mechanical Keyboard.
- SA Profile R4- Artisan Keycap",
    price: 39.88, seller_id: u34.id, category_id: 22)

file267 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey1.jpg')
file268 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey2.jpg')
file269 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey3.jpg')
file270 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey4.jpg')


p59.photos.attach(io: 267, filename: 'jellykey1.jpg')
p59.photos.attach(io: 268, filename: 'jellykey2.jpg')
p59.photos.attach(io: 269, filename: 'jellykey3.jpg')
p59.photos.attach(io: 270, filename: 'jellykey4.jpg')

r188 = Review.create(body: 'Love it .. just beautiful looks just like picture money well spent',
author_id: u32.id, product_id: p59.id, rating: 5)

r189 = Review.create(body: 'it arrived quicker than expected. Great quality, was a perfect gift.',
author_id: u30.id, product_id: p59.id, rating: 5)








p60 = Product.create(name:'Pokemon starter kit: Mechanical keyboard key caps!', description: "Choooooose your pokemon! Keycap color may vary in size and color. But quality will be the very best that no one ever was.
\n
Each mini charm comes with a strap to attach to bags, backpacks, wallets, phones, and more!
Please handle these handmade charms with care~",
    price: 40.00, seller_id: u34.id, category_id: 22)

file271 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey1.jpg')
file272 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey2.jpg')
file273 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey3.jpg')


p60.photos.attach(io: 271, filename: 'pokekey1.jpg')
p60.photos.attach(io: 272, filename: 'pokekey2.jpg')
p60.photos.attach(io: 273, filename: 'pokekey3.jpg')

r190 = Review.create(body: 'My son loves it. Thanks!!!
Shipping was a bit slow but seller communicated the delays well.',
author_id: u32.id, product_id: p60.id, rating: 4)

r191 = Review.create(body: 'exactly what i wanted, and so cute.',
author_id: u29.id, product_id: p60.id, rating: 5)

r192 = Review.create(body: 'My friend loved it! The shipping was very fast and the key cap arrived in a small box with padding. There were also 2 candies included!',
author_id: u28.id, product_id: p60.id, rating: 5)






p61 = Product.create(name: 'Cherry Blossom WASD Keycaps', description: "Take your mechanical keyboard to Hanamura with these handcrafted cherry blossom keycaps!",
    price: 50.00, seller_id: u33.id, category_id: 22)

file274 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey1.jpg')
file275 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey2.jpg')
file276 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey3.jpg')


p61.photos.attach(io: 274, filename: 'cherrykey1.jpg')
p61.photos.attach(io: 275, filename: 'cherrykey2.jpg')
p61.photos.attach(io: 276, filename: 'cherrykey3.jpg')

r193 = Review.create(body: 'Very nicely made keycaps! They fit well on the keyboard',
author_id: u27.id, product_id: p61.id, rating: 5)

r194 = Review.create(body: 'very pretty keys, i love them!',
author_id: u26.id, product_id: p61.id, rating: 4)

r195 = Review.create(body: "Absolutely gorgeous keycaps! Definitely recommend these. I received a set that was too small to fit on my keyboard, which the seller stated had shrunk too much during the curing process. They let me keep the defective set and gladly sent out a replacement via expedited shipping which fit perfectly now.
\n
P.S. The caps do take a bit of extra force to push into the switch correctly, so be careful when you push them down so as to not damage the switch.",
author_id: u225.id, product_id: p61.id, rating: 5)







p62 = Product.create(name: 'Starcraft Crystal Cherry MX Keycap', description: "Crystal Cherry MX keyboard keycap. 3D resin print using Anycubic Photon 3D printer. Hand painted and test fitted. Black base with clear top. Clear top coated in gloss finish.",
    price: 15.00, seller_id: u33.id, category_id: 22)

file277 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/crystalkey1.jpg')
file278 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/crystalkey2.jpg')


p62.photos.attach(io: 277, filename: 'crystalkey1.jpg')
p62.photos.attach(io: 278, filename: 'crystalkey2.jpg')

r196 = Review.create(body: 'Looks really cool lit up on my keyboard',
author_id: u24.id, product_id: p62.id, rating: 4)





p63 = Product.create(name: 'GOLD PLATED Harry Potter Necklace Harry Potter Jewelry Harry Poter Necklace Gift potter Hourglass Necklace Harry Potter Time Turner Necklace', description: "The Pendant On This Harry Potter Necklace Has a REAL HOURGLASS That is Filled With REAL Sand, And it Rotates And Turns. The Following Words Are Engraved Onto The Harry Potter Necklace Pendant: 'I Mark The Hours, Every One, Nor Have I Yet Outrun The Sun. My Use And Value, Unto You, Are Gauged By What You Have To Do' (Just Like The Real Time Turner Necklace.) ",
    price: 15.86, seller_id: u32.id, category_id: 22)

file279 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp11.jpg')
file280 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp12.jpg')
file281 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp13.jpg')


p63.photos.attach(io: 279, filename: 'hp11.jpg')
p63.photos.attach(io: 280, filename: 'hp12.jpg')
p63.photos.attach(io: 281, filename: 'hp13.jpg')

r197 = Review.create(body: 'I love it! It arrived so quickly and the quality is better than I expected, and it’s really sturdy. The chain is on the more fragile side because I think it’s heavy plastic and not some sort of metal, but that’s easily replaced if you wanted to. It’s a great replica and I’m thrilled. Thank you!!',
author_id: u24.id, product_id: p63.id, rating: 5)

r198 = Review.create(body: 'The perfect gift for one of my bridesmaids',
author_id: u23.id, product_id: p63.id, rating: 4)

r199 = Review.create(body: 'Very nicely wrapped , quick shipping , beautiful necklace ! I will totally buy from this shop again. Thank you.',
author_id: u22.id, product_id: p63.id, rating: 5)

r200 = Review.create(body: 'This product is beautiful!! I’m giving mine to a friend who loves Harry Potter!! It’s great quality and gorgeous!',
author_id: u21.id, product_id: p63.id, rating: 5)






p64 = Product.create(name: 'Elven ears (a pair). Earcuffs, Elf ears, cosplay fantasy decoration for ears elven ear ear cuff elvish earring elf ear', description: "These ear cuffs are made with copper core wire, you can choose the material with which the wire will be plated on, and it also beads from the semiprecious stone. They are sold as a pair and also you can buy one ear.",
    price: 23.00, seller_id: u32.id, category_id: 22)

file282 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/earcuff1.jpg')

p64.photos.attach(io: 282, filename: 'earcuff1.jpg')

r201 = Review.create(body: 'I love love love this item so much!! Came pretty quick even though I’m from the US and the packaging was protective and neat. Will definitely be purchasing from this shop again!! Thank you!',
author_id: u24.id, product_id: p64.id, rating: 5)

r202 = Review.create(body: 'The ear cuffs are gorgeous! It took me a couple of gos to get the hang of putting them on - but once I’d got it, it was easy. The metal is delicate and easy to manipulate - a little squeeze once they’re on and they’re secure.
I have had loads of compliments. They look really striking against my bright purple hair. Not just for parties: too nice for that. Everyday!',
author_id: u20.id, product_id: p64.id, rating: 4)

r203 = Review.create(body: 'Amazing! Quick delivery, beautiful product. I will defenitely order more from this shop!! 🤩😍',
author_id: u22.id, product_id: p64.id, rating: 5)







p65 = Product.create(name: 'Gudetama Just Chillin Enamel Pin // Gudetama Pins // Sanrio Licensed Pins', description: "Um, so, Gudetama the grumpy egg is all of us chillin in our eggshells, right? This Gudetama Just Chillin enamel pin in hard enamel measures approx 30mm x 25mm. Lazy but cute. Fully Sanrio licensed.",
    price: 8.96, seller_id: u31.id, category_id: 22)

file283 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gudetama1.jpg')
file284 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gudetama2.jpg')

p65.photos.attach(io: 283, filename: 'gudetama1.jpg')
p65.photos.attach(io: 284, filename: 'gudetama2.jpg')

r204 = Review.create(body: 'the cutest pin ever thank you!!
',
author_id: u19.id, product_id: p65.id, rating: 5)

r205 = Review.create(body: 'Great communication and quality product!! Will definitely shop here again!!!',
author_id: u18.id, product_id: p65.id, rating: 4)



p66 = Product.create(name: 'Zelda Inspired Hyrule Crest Mahogany Hand-Tooled Leather Wallet', description: "The Hyrule Crest is tooled on the front, and the wallet is aged with a deep aged mahogany brown with a lighter sigil. \n
The black interior has two bill pockets, six upward facing card pockets, and two receipt pockets. Folded, this wallet measures approximately 4.5 by 3.5 inches (9cm x 11.5 cm).",
    price: 88.00, seller_id: u30.id, category_id: 22)

file285 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet1.jpg')
file286 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet2.jpg')
file287 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet3.jpg')

p66.photos.attach(io: 285, filename: 'zeldawallet1.jpg')
p66.photos.attach(io: 286, filename: 'zeldawallet2.jpg')
p66.photos.attach(io: 287, filename: 'zeldawallet3.jpg')

r206 = Review.create(body: 'I bought this wallet as a Christmas gift for my partner, and it arrived quickly and was well worth the money! He is really enjoying the wallet, too. I was also very happy with how it was packaged with so much care. Definitely 5/5 stars!',
author_id: u19.id, product_id: p66.id, rating: 5)

r207 = Review.create(body: 'This item arrived beautifully packaged and gorgeous to look at. My husband opened it on Christmas Eve and still really loves it.',
author_id: u17.id, product_id: p66.id, rating: 4)




p67 = Product.create(name: 'Welcome To Anti Social Animal Crossing New Horizon T Shirt', description: "Animal Crossing New Horizon Welcome to Anti-Social T Shirt
*About Us And Our T-Shirts*\n

We are a small business and love what we do and strive to see our customers smile with satisfaction. We create our designs and print them on super soft combed and ring-spun high quality 100% cotton t-shirt. Our shirts are preshrunk so after washing it might only shrink just a little bit. The best part is our t-shirt is unisex so one fits all. You can even share it with your family or friends! Better yet buy them one as well!",
    price: 20.00, seller_id: u29.id, category_id: 22)

file288 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt1.jpg')
file289 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt2.jpg')
file290 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt3.jpg')

p67.photos.attach(io: 288, filename: 'acshirt1.jpg')
p67.photos.attach(io: 289, filename: 'acshirt2.jpg')
p67.photos.attach(io: 290, filename: 'acshirt3.jpg')

r208 = Review.create(body: 'It arrived just as advertised and is such a soft shirt!',
author_id: u19.id, product_id: p67.id, rating: 5)

r209 = Review.create(body: 'Gotta a great shirt and got it quick can’t beat that',
author_id: u17.id, product_id: p67.id, rating: 4)




p68 = Product.create(name: 'Animal Crossing - town sign - wall mountable lamp', description: "Holy mackerel!\n

Welcome all visitors to your town with a beautiful wall hanging lamp built with a sturdy birch frame and two colors of vibrant and durable acrylic. The lamp measures about 12\" across the base. Bulb included is a 40w incandescent bulb, candelabra base. Cord has a rotary style switch and measures 6-feet in length. On the back of the lamp there is a keyhole style hanging opening to allow for quick and easy mounting with any small nail. Each lamp will be assembled and shipped within 2 to 3 business days. We make them all to order with buckets of love and care.",
    price: 64.00, seller_id: u28.id, category_id: 22)

file291 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp1.jpg')
file292 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp2.jpg')
file293 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp3.jpg')
file294 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp4.jpg')

p68.photos.attach(io: 291, filename: 'aclamp1.jpg')
p68.photos.attach(io: 292, filename: 'aclamp2.jpg')
p68.photos.attach(io: 293, filename: 'aclamp3.jpg')
p68.photos.attach(io: 294, filename: 'aclamp4.jpg')

r210 = Review.create(body: 'AHHHHH, this was amazing!! First, this came is SO fast. Second, the quality is top notch. I have nothing to say but kudos. Wonderfully made, and it looks so cute. I can\'t wait to add this above my desk area. If you were thinking of getting this, know it was worth every penny.',
author_id: u16.id, product_id: p68.id, rating: 5)

r211 = Review.create(body: 'The first thing I noticed was how light it was, but also how well made this is, easiest thing to hang ever. Lights up the room the perfect amount to sit back comfortably and play animal crossing',
author_id: u15.id, product_id: p68.id, rating: 4)








p69 = Product.create(name: 'Animal Crossing Enamel Pins - KK Slider and Blathers Animal Crossing Pin', description: "Add some classic Animal Crossing flair to your collection.
Pick between KK Slider, Blathers, or grab both!\n

Each pin is about 1.25\" and has one clutch on the back. Select the locking pin back option for an even more secure hold for your pins. If you plan to wear these on a backpack, I would strongly recommend the locking backs.",
    price: 12.00, seller_id: u27.id, category_id: 22)

file295 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin1.jpg')
file296 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin2.jpg')
file297 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin3.jpg')

p69.photos.attach(io: 295, filename: 'acpin1.jpg')
p69.photos.attach(io: 296, filename: 'acpin2.jpg')
p69.photos.attach(io: 297, filename: 'acpin3.jpg')

r212 = Review.create(body: 'So adorable! I put them both on my purse 😍',
author_id: u13.id, product_id: p69.id, rating: 5)

r213 = Review.create(body: 'Got the Blathers pin as a pre-ACNH gift for my fiance. He was so excited!! Quote from him upon seeing the pin for the first time - "I wish all enamel pins were this high quality, this is beautiful."',
author_id: u12.id, product_id: p69.id, rating: 4)

r214 = Review.create(body: 'Great quality and so cute! Bought it as a gift for my boyfriend and he loved it. Thank you!',
author_id: u11.id, product_id: p69.id, rating: 4)




p70 = Product.create(name: 'League of Legends Braum Poro Figure Cute Kawaii Poro Figurine Sculpture Handmade Clay Gift - LoL Fan Art', description: "This League of Legends Braum poro is a great addition to anyone's league collection.
This is a perfect gift for any league of legends fan.
All of my figures are handmade and hand painted by me.
It takes a lot of time to create just one.
I hope you enjoy them as much as I enjoyed making them.",
    price: 50.00, seller_id: u26.id, category_id: 22)

file298 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro1.jpg')
file299 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro2.jpg')
file300 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro3.jpg')

p70.photos.attach(io: 298, filename: 'poro1.jpg')
p70.photos.attach(io: 299, filename: 'poro2.jpg')
p70.photos.attach(io: 300, filename: 'poro3.jpg')

r215 = Review.create(body: 'Not much else to say. Obviously I would buy again. Great quality. Only if there was a Leona and a Graves, I think I would have the entire collection of all my mains over the years at that point XD Send help.',
author_id: u10.id, product_id: p70.id, rating: 5)

r216 = Review.create(body: 'honestly one of the CUTEST things i have bought in awhile! if you’re thinking about buying a poro from here, you won’t be disappointed (-:',
author_id: u9.id, product_id: p70.id, rating: 4)




p71 = Product.create(name: 'Gengar Pokemon Keycap || For Mechanical Cherry MX switches ||', description: "You have a mechanical keyboard with Cherry MX-style switches? You like Pokemon? You ALSO want to a ridiculous keycap to replace one of your perfectly functional keys? Look no further! These unique Gengar keycaps will be sure to brighten up your keyboard and make you smile. These keycaps are made in white plastic so that lighting from RGB keyboards can shine through. They are also easy to customize and paint to your liking if desired.",
    price: 9.89, seller_id: u25.id, category_id: 22)

file301 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gengarkey1.jpg')
file302 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gengarkey2.jpg')

p71.photos.attach(io: 301, filename: 'gengarkey1.jpg')
p71.photos.attach(io: 302, filename: 'gengarkey2.jpg')

r217 = Review.create(body: 'After taking time to use the keycap for a considerable about of time, it’s very well done for what it is. Thanks.',
author_id: u7.id, product_id: p71.id, rating: 5)

r218 = Review.create(body: '',
author_id: u6.id, product_id: p71.id, rating: 3)







p72 = Product.create(name: 'Crochet Chocobo from Final Fantasy Amigurumi/ Plushie Doll/ Bagcharm', description: "Detailed crocheted Chocobo from Final Fantasy, hope you enjoy!",
    price: 19.89, seller_id: u24.id, category_id: 22)

file303 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff11.jpg')
file304 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff12.jpg')

p72.photos.attach(io: 303, filename: 'ff11.jpg')
p72.photos.attach(io: 304, filename: 'ff12.jpg')

r219 = Review.create(body: 'This little guy is so adorable and I can\'t wait to get another one! ❤️',
author_id: u7.id, product_id: p72.id, rating: 5)





p73 = Product.create(name: 'Cute amigurumi Moogle Moguri from final fantasy - as keychain or mini plush', description: "♥ This made in ​​crochet (hook) with the amigurumi technique
\n♥ 100% Acrylic Wool, hand wash well with cold water.
\n♥ has felt, a small wire and synthetic filling
\n♥ Her measurements are: 7,5 cm high x 5 cm wide
\n♥ All ships within working day and certificated form with tracking number",
    price: 9.23, seller_id: u23.id, category_id: 22)

file305 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff1.jpg')
file306 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff2.jpg')
file307 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff3.jpg')

p73.photos.attach(io: 305, filename: 'ff1.jpg')
p73.photos.attach(io: 306, filename: 'ff2.jpg')
p73.photos.attach(io: 307, filename: 'ff3.jpg')

r220 = Review.create(body: 'The moogle is absolutely adorable! Very nicely made and the size is perfect. The seller was very helpful and had great communication. I will be purchasing again in the future!',
author_id: u7.id, product_id: p73.id, rating: 5)

r221 = Review.create(body: 'So cute, just as pictured! The shop owner is so sweet and helpful too!',
author_id: u6.id, product_id: p73.id, rating: 5)

r222 = Review.create(body: 'Took a while to get in but it\'s super cute. Using it for a cosplay thing but it would definitely make a good decorative piece for something.',
author_id: u5.id, product_id: p73.id, rating: 4)





p74 = Product.create(name: 'Bride Cordelia Fire Emblem Heroes 11x17" Print', description: "Bride Cordelia Print!\n
Prints are shipped via a 2\" diameter tube. We know that some buyers prefer their prints shipped flat, but we are playing it safe since we know that thick card mailers can still get damaged and creased in the mail sometimes.",
    price: 22.23, seller_id: u22.id, category_id: 22)

file308 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cordelia1.jpg')

p74.photos.attach(io: 308, filename: 'cordelia1.jpg')

r223 = Review.create(body: 'Was a birthday present for a very good friend who was overjoyed! Thank you for the fast shipping!',
author_id: u6.id, product_id: p74.id, rating: 5)




p75 = Product.create(name: 'Cuphead Gaming Dictionary Art', description: "Cuphead rules. It may have made me pull some of my hair out and even made my hair a little grey but I love it. Cuphead is based around art from the 1930s and placing such vintage design on a dictionary page feels like a great fit to me. This is Cuphead and Mugman on a vintage dictionary page that has been upcycled to be a one of a kind piece of decoration or a great gift!",
    price: 6.99, seller_id: u21.id, category_id: 22)

file309 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cuphead1.jpg')

p75.photos.attach(io: 309, filename: 'cuphead1.jpg')

r224 = Review.create(body: 'Very cute and super creative!',
author_id: u5.id, product_id: p75.id, rating: 5)





p76 = Product.create(name: 'Zelda inspired battle damaged shield', description: "Shield is made out of foam.
Dimensions are about 23x21.
Sits on right hand.\n

Comes with shield and belt",
    price: 180.00, seller_id: u20.id, category_id: 22)

file310 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield1.jpg')
file311 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield2.jpg')

p76.photos.attach(io: 310, filename: 'zeldashield1.jpg')
p76.photos.attach(io: 311, filename: 'zeldashield2.jpg')

r225 = Review.create(body: 'This was a present for my best friend. He said in 36 years he has never gotten anything as cool. His favorite gift Ever!',
author_id: u4.id, product_id: p76.id, rating: 5)

r226 = Review.create(body: 'Got this as a Christmas gift for my boyfriend who is a big Zelda fan. I have slowly been getting him different weapons from the games and as soon aa i saw the quality of this shield and all the great reviews, i knew I had to get it. He absolutely loced it! It\'s already mounted on the wall and looks amazing with the other weapons. Would high my recommend this seller, the work on the shield is amazing!',
author_id: u3.id, product_id: p76.id, rating: 5)



p77 = Product.create(name: 'Destiny Ghost - 3D printed and LED Lit', description: "'In its dying breath, The Traveler created the Ghosts to seek out those who can wield its Light as a weapon - Guardians - to protect us and do what the Traveler itself no longer can.'
— The Speaker, Destiny, Restoration\n

A Ghost is a levitating artificial intelligence used by Guardians.\n

This item is 3D printed at 20% infill, very sturdy. Printed in black PLA plastic.",
    price: 27.00, seller_id: u19.id, category_id: 22)

file312 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/destiny1.jpg')
file313 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/destiny2.jpg')

p77.photos.attach(io: 312, filename: 'destiny1.jpg')
p77.photos.attach(io: 313, filename: 'destiny2.jpg')

r227 = Review.create(body: 'Really good quality and fast shipping. Also many options for customization without extra cost.',
author_id: u2.id, product_id: p77.id, rating: 5)

r228 = Review.create(body: 'Beautifully made and arrived really quickly, especially as it travelled all the way across the globe! Would highly recommend.',
author_id: u1.id, product_id: p77.id, rating: 5)






p78 = Product.create(name: 'High Quality 925 Sterling Silver Kingdom Hearts Crown Pendant Sora Necklace Jewelry', description: "This is solid 925 Sterling Silver Kingdom Hearts Crown, Sora's Necklace. The pendant is polished and shiny,
It comes with 22 inches long silver plated chain.",
    price: 44.00, seller_id: u18.id, category_id: 22)

file314 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh1.jpg')
file315 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh2.jpg')

p78.photos.attach(io: 314, filename: 'kh1.jpg')
p78.photos.attach(io: 315, filename: 'kh2.jpg')

r229 = Review.create(body: 'Absolutely beautiful! Bought this as a surprise for my boyfriend and he absolutely loves it! He wears it everyday! It hangs perfectly and is just the right size to wear it’s subtle and looks like it does on Sora. I did a lot of research to try to find a good quality version of this and this was the best I found, the quality and craftsmanship is worth the price! Thank you!',
author_id: u8.id, product_id: p78.id, rating: 5)

r230 = Review.create(body: 'Necklace is perfect! Came in faster than expected and it\'s just great craftsmanship!',
author_id: u50.id, product_id: p78.id, rating: 5)





p79 = Product.create(name: 'Kingdom Hearts large keyblade necklace with mini charm', description: "24\” necklace made of alloy, no nickel

Comes in an organza gift bag but many people have asked for them to be gift wrapped also so now we offer a gift wrap option. If you add gift wrap to your order, your item will come gift wrapped in wrapping paper",
    price: 20.00, seller_id: u17.id, category_id: 22)

file316 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh11.jpg')

p79.photos.attach(io: 316, filename: 'kh11.jpg')

r231 = Review.create(body: 'This necklace exceeded my expectations by a long shot! I can\'t believe how beautiful it is and it\'s the perfect size and weight. People that don\'t even know what Kingdom Hearts is are complimenting the necklace. Great purchase!',
author_id: u8.id, product_id: p79.id, rating: 5)

r232 = Review.create(body: 'Necklace is perfect! Came in faster than expected and it\'s just great craftsmanship!',
author_id: u49.id, product_id: p79.id, rating: 5)




p80 = Product.create(name: 'World of Warcraft Hearthstone Keychain (glow in the dark)', description: "This beautiful keychain could be the best gift! Give it to your friends so that they would come back to you more often ;)
\n
The keychain is made entirely by hand of polymer clay.
It comes with a gift box.
Also you can choose the color of the symbol.",
    price: 26.75, seller_id: u16.id, category_id: 22)

file317 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone1.jpg')
file318 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone2.jpg')
file319 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone3.jpg')
file320 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone4.jpg')

p80.photos.attach(io: 317, filename: 'hearthstone1.jpg')
p80.photos.attach(io: 318, filename: 'hearthstone2.jpg')
p80.photos.attach(io: 319, filename: 'hearthstone3.jpg')
p80.photos.attach(io: 320, filename: 'hearthstone4.jpg')

r233 = Review.create(body: 'Absolutely perfect! They were lightweight and just the right length. The glow takes a bit so I recommend putting under a good light for quite a bit before you go into a dark area.',
author_id: u48.id, product_id: p80.id, rating: 5)

r234 = Review.create(body: 'Thanks for the amazing piece of art! Very nice!',
author_id: u47.id, product_id: p80.id, rating: 4)




p81 = Product.create(name: 'Heart of Azeroth necklace | World of Warcraft', description: "Limited edition, only 5 products. The each product is equipped with a central insert.
\n Сores were made individually for each product using the lampwork technique, differ in their tracery.
\nMaterial: 925 silver, gilding, lampwork",
    price: 209.00, seller_id: u15.id, category_id: 22)

file321 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow1.jpg')
file322 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow2.jpg')
file323 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow3.jpg')
file324 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow4.jpg')

p81.photos.attach(io: 321, filename: 'wow1.jpg')
p81.photos.attach(io: 322, filename: 'wow2.jpg')
p81.photos.attach(io: 323, filename: 'wow3.jpg')
p81.photos.attach(io: 324, filename: 'wow4.jpg')

r235 = Review.create(body: "The pendant is perfect! The craftsmanship and attention to detail is amazing.\n
    Shipping was very fast and everything was packaged very well. Definitely will purchase from again. Thank you!",
author_id: u46.id, product_id: p81.id, rating: 5)

r236 = Review.create(body: 'Beautiful piece! And, for shipping from the middle of Russia, it arrived in no time! Can’t wait to release N’Zoth with this bad boy.',
author_id: u45.id, product_id: p81.id, rating: 4)

r237 = Review.create(body: 'Simply beautiful!!! This is the 2nd item from this vendor that I\'ve purchased and I have never been disappointed. Great attention to deal!!!',
author_id: u44.id, product_id: p81.id, rating: 5)







p82 = Product.create(name: 'Heart of Azeroth necklace | World of Warcraft', description: "Limited edition, only 5 products. The each product is equipped with a central insert.
\n Сores were made individually for each product using the lampwork technique, differ in their tracery.
\nMaterial: 925 silver, gilding, lampwork",
    price: 209.00, seller_id: u15.id, category_id: 22)

file321 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow1.jpg')
file322 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow2.jpg')
file323 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow3.jpg')
file324 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow4.jpg')

p82.photos.attach(io: 321, filename: 'wow1.jpg')
p82.photos.attach(io: 322, filename: 'wow2.jpg')
p82.photos.attach(io: 323, filename: 'wow3.jpg')
p82.photos.attach(io: 324, filename: 'wow4.jpg')

r235 = Review.create(body: "The pendant is perfect! The craftsmanship and attention to detail is amazing.\n
    Shipping was very fast and everything was packaged very well. Definitely will purchase from again. Thank you!",
author_id: u46.id, product_id: p82.id, rating: 5)

r236 = Review.create(body: 'Beautiful piece! And, for shipping from the middle of Russia, it arrived in no time! Can’t wait to release N’Zoth with this bad boy.',
author_id: u45.id, product_id: p82.id, rating: 4)

r237 = Review.create(body: 'Simply beautiful!!! This is the 2nd item from this vendor that I\'ve purchased and I have never been disappointed. Great attention to deal!!!',
author_id: u44.id, product_id: p82.id, rating: 5)
