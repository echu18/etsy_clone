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








# p27 = Product.create(name:'Kawaii Watercolor Miyazaki Totoro Japanese Anime Ghibli Posters Prints', description: "Studio Ghibli", 
#     price: 7.86, seller_id: u22.id, category_id: 22)


# file172 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli1.jpg')
# file173 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli2.jpg')
# file174 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli2.jpg')

# p27.photos.attach(io: file172, filename: 'ghibli1.jpg')
# p27.photos.attach(io: file173, filename: 'ghibli2.jpg')
# p27.photos.attach(io: file174, filename: 'ghibli2.jpg')







