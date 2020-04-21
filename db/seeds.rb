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

u31= User.create(username: 'Eric', email: 'eric@cc.com', password: '123456', store_name: 'HighCaliberGraphix')
u32= User.create(username: 'Erin', email: 'erin@cc.com', password: '123456', store_name: 'EncasingNature')
u33= User.create(username: 'Melissa', email: 'melissa@cc.com', password: '123456', store_name: 'ArtByMelissa')
u34= User.create(username: 'Theodore', email: 'theodore@cc.com', password: '123456', store_name: 'AncientOres')
u35= User.create(username: 'Liam', email: 'liam@cc.com', password: '123456', store_name: 'CreativeVigilant')
u36= User.create(username: 'Oliver', email: 'oliver@cc.com', password: '123456', store_name: 'ParisByNight')
u37= User.create(username: 'Finn', email: 'finn@cc.com', password: '123456', store_name: 'Artsmith')
u38= User.create(username: 'Ellie', email: 'ellie@cc.com', password: '123456', store_name: 'GoldDust')
u39= User.create(username: 'Marina', email: 'marina@cc.com', password: '123456', store_name: 'RoboRobo')
u40= User.create(username: 'Levi', email: 'levi@cc.com', password: '123456', store_name: 'Monogramme')
u41= User.create(username: 'Lilly', email: 'lilly@cc.com', password: '123456', store_name: 'WarmThreads')
u42= User.create(username: 'Naomi', email: 'naomi@cc.com', password: '123456', store_name: 'MemeCuisine')
u43= User.create(username: 'Emily', email: 'emily@cc.com', password: '123456', store_name: 'BoldAndBrash')
u44= User.create(username: 'Olivia', email: 'olivia@cc.com', password: '123456', store_name: 'uWuInc')
u45= User.create(username: 'Ryan', email: 'ryan@cc.com', password: '123456', store_name: 'MadPaintingShop')
u46= User.create(username: 'Victoria', email: 'victoria@cc.com', password: '123456', store_name: 'ZenOrigin')
u47= User.create(username: 'David', email: 'david@cc.com', password: '123456', store_name: 'SparkyCard')
u48= User.create(username: 'Carlos', email: 'carlos@cc.com', password: '123456', store_name: 'EkaliDesign')
u49= User.create(username: 'Joe', email: 'joe@cc.com', password: '123456', store_name: 'QuiteCuteCrafts')
u50= User.create(username: 'Tony', email: 'tony@cc.com', password: '123456', store_name: 'TheLaw')



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



# Main categories
cat1 = Category.create(name: 'Jewelry')
cat2 = Category.create(name: 'Clothing')
cat3 = Category.create(name: 'Home')
cat4 = Category.create(name: 'Tech Accessories')
cat5 = Category.create(name: 'Art')
cat6 = Category.create(name: 'Collectibles')
cat7 = Category.create(name: 'Rave')
cat8 = Category.create(name: 'Anime & Cartoons')
cat9 = Category.create(name: 'Gaming')
cat10 = Category.create(name: 'Memes')
cat11 = Category.create(name: 'Cosplay')

# Sub-categories
cat12 = Category.create(name: 'Keycaps', main_cat_id: cat4.id)
cat13 = Category.create(name: 'Prints', main_cat_id: cat5.id)
cat14 = Category.create(name: 'Perler', main_cat_id: cat5.id)
cat15 = Category.create(name: 'Pins', main_cat_id: cat5.id)
cat16 = Category.create(name: 'Stickers', main_cat_id: cat5.id)
cat17 = Category.create(name: 'Plushes', main_cat_id: cat6.id)
cat18 = Category.create(name: 'Figurines', main_cat_id: cat6.id)

# # Sub-categories: Cosplay
# cat49 = Category.create(name: 'Costumes', main_cat_id: cat11.id)
# cat50 = Category.create(name: 'Props & Accessories', main_cat_id: cat11.id)

# # Sub-categories: Anime / Cartoon
# cat19 = Category.create(name: 'My Hero Academia', main_cat_id: cat8.id)
# cat20 = Category.create(name: 'Attack on Titan', main_cat_id: cat8.id)
# cat21 = Category.create(name: 'One Punch Man', main_cat_id: cat8.id)
# cat22 = Category.create(name: 'Gundam', main_cat_id: cat8.id)
# cat23 = Category.create(name: 'Sailor Moon', main_cat_id: cat8.id)
# cat24 = Category.create(name: 'One Piece', main_cat_id: cat8.id)
# cat25 = Category.create(name: 'My Neighbor Totoro', main_cat_id: cat8.id)
# cat26 = Category.create(name: 'Dragon Ball', main_cat_id: cat8.id)
# cat27 = Category.create(name: 'Mob Psycho', main_cat_id: cat8.id)
# cat28 = Category.create(name: 'Yugioh', main_cat_id: cat8.id)
# cat29 = Category.create(name: 'Adventure Time', main_cat_id: cat8.id)
# cat30 = Category.create(name: 'Avatar: The Last Airbender / Legend of Korra', main_cat_id: cat8.id)
# cat31 = Category.create(name: 'JoJo\'s Bizarre Adventure', main_cat_id: cat8.id)
# cat32 = Category.create(name: 'My Little Pony', main_cat_id: cat8.id)
# cat33 = Category.create(name: 'Inuyasha', main_cat_id: cat8.id)
# cat34 = Category.create(name: 'Symphogear', main_cat_id: cat8.id)
# cat35 = Category.create(name: 'Cardcaptor Sakura', main_cat_id: cat8.id)
# cat36 = Category.create(name: 'Cowboy Bebop', main_cat_id: cat8.id)

# # Sub-categories: Gaming
# cat37 = Category.create(name: 'Overwatch', main_cat_id: cat9.id)
# cat38 = Category.create(name: 'Pokemon', main_cat_id: cat9.id)
# cat39 = Category.create(name: 'Animal Crossing', main_cat_id: cat9.id)
# cat40 = Category.create(name: 'League of Legends', main_cat_id: cat9.id)
# cat41 = Category.create(name: 'Kirby', main_cat_id: cat9.id)
# cat42 = Category.create(name: 'Legend of Zelda', main_cat_id: cat9.id)
# cat43 = Category.create(name: 'Fire Emblem', main_cat_id: cat9.id)
# cat44 = Category.create(name: 'Cuphead', main_cat_id: cat9.id)
# cat45 = Category.create(name: 'GTA', main_cat_id: cat9.id)
# cat46 = Category.create(name: 'Nier Automata', main_cat_id: cat9.id)
# cat47 = Category.create(name: 'MapleStory', main_cat_id: cat9.id)
# cat48 = Category.create(name: 'Sonic', main_cat_id: cat9.id)



























# Seed products, product images, reviews

p1 = Product.create(name:'Cat Memes Sticker Pack', description: 'This sticker pack includes six waterproof vinyl stickers of cat memes. They\'re perfect for laptops, water bottles (hand wash only), phones and whatever you can think of. These stickers make a good gift for meme addicts or a treat for yourself. These stickers were printed on vinyl waterproof and tear proof laser paper.
    Measurements:
    Woman yelling and cat being yelled at (second image): 5.7 cm and 3.7 cm at longest measurements
    Coughing cat (third image): 7.5 cm at longest measurement
    Polite cat (fourth image): 4.9 cm at longest measurement
    Crying cat (fifth image): 8 cm at longest measurement
    Cat on stairs (sixth image): 6 cm at longest measurement', 
    price: 9.47, seller_id: u1.id )

tag1 = Tag.create(category_id: cat10.id , product_id: p1.id)
tag2 = Tag.create(category_id: cat16.id , product_id: p1.id)



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
price: 8.49, seller_id: u4.id )

tag3 = Tag.create(category_id: cat10.id , product_id: p2.id)
tag4 = Tag.create(category_id: cat15.id , product_id: p2.id)
tag4_1 = Tag.create(category_id: cat6.id , product_id: p2.id)
# Tag.create(category_id: cat38.id , product_id: p2.id)


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
    price: 12.00, seller_id: u13.id )

tag5 = Tag.create(category_id: cat10.id , product_id: p3.id)
tag6 = Tag.create(category_id: cat13.id , product_id: p3.id)



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
    price: 11.99, seller_id: u12.id )

tag7 = Tag.create(category_id: cat15.id , product_id: p4.id)
tag7_1 = Tag.create(category_id: cat6.id , product_id: p4.id)
# Tag.create(category_id: cat22.id , product_id: p4.id)


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
    price: 21.00, seller_id: u7.id )

tag8 = Tag.create(category_id: cat2.id , product_id: p5.id)


file120 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/shirt1.jpg')
file121 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/shirt2.jpg')

p5.photos.attach(io: file120, filename: 'shirt1.jpg')
p5.photos.attach(io: file121, filename: 'shirt2.jpg')



r15 = Review.create(body: 'I love these shirts!! So cute!', 
author_id: u4.id, product_id: p5.id, rating: 5)

r16 = Review.create(body: 'Came on time, and amazing communication! (Sizing might be a little bigger than expected)', 
author_id: u12.id, product_id: p5.id, rating: 4)




p6 = Product.create(name:'Pokemon Terrarium Sleepy Charmander Terrarium Pokeball Charmander gifts Pokemon go Best Pokemon Gifts For Him/Her', description: "Best Pokemon Gifts For The Pokemon Lover .", 
    price: 28.70, seller_id: u8.id )

tag9 = Tag.create(category_id: cat6.id , product_id: p6.id)


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
    price: 2.5, seller_id: u17.id )

tag10 = Tag.create(category_id: cat5.id , product_id: p7.id)
tag11 = Tag.create(category_id: cat16.id , product_id: p7.id)


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
    price: 4.00, seller_id: u17.id )

    tag12 = Tag.create(category_id: cat5.id , product_id: p8.id)
    tag13 = Tag.create(category_id: cat16.id , product_id: p8.id)




file129 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ramen1.jpg')
file130 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ramen2.jpg')

p8.photos.attach(io: file129, filename: 'ramen1.jpg')
p8.photos.attach(io: file130, filename: 'ramen2.jpg')


r20 = Review.create(body: 'Super cute! Boyfriend loves it a lot ^^', 
author_id: u21.id, product_id: p8.id, rating: 4)

r21 = Review.create(body: 'I didn\'t realize the material would be so thick and durable. It has a nice matte feel to it that I also love with my stickers. Definitely worth the money, and I love the cute design!!!', 
author_id: u22.id, product_id: p8.id, rating: 4)




p9 = Product.create(name:'Overwatch Logo Coaster', description: "Collector coaster of the Overwatch Logo. Approximate size is 4.25 inch diameter. Machined on black polymer plastic with a white core and hand painted with enamel in orange.",
      price: 5.00, seller_id: u18.id )

      tag14 = Tag.create(category_id: cat3.id , product_id: p9.id)
      tag15 = Tag.create(category_id: cat9.id , product_id: p9.id)


file143 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ow1.jpg')

p9.photos.attach(io: file143, filename: 'ow1.jpg')




p10 = Product.create(name:'Vinyl Waterproof Animal Crossing Sticker', description: "In anticipation for the new animal crossing game, I made this calming~ sticker based off my own town in acnl! Animal crossing is one of my favorite games and i want to share all the aspects I love to you guys <3
", price: 6.00, seller_id: u18.id )
      tag16 = Tag.create(category_id: cat9.id , product_id: p10.id)
      tag17 = Tag.create(category_id: cat16.id , product_id: p10.id)
      tag18 = Tag.create(category_id: cat5.id , product_id: p10.id)


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
    price: 12.89, seller_id: u4.id )

    
    tag19 = Tag.create(category_id: cat9.id , product_id: p11.id)
    tag20 = Tag.create(category_id: cat14.id , product_id: p11.id)
    


file152 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeperler1.jpg')
file153 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pokeperler2.jpg')


p11.photos.attach(io: file152, filename: 'pokeperler1.jpg')
p11.photos.attach(io: file153, filename: 'pokeperler2.jpg')






p13 = Product.create(name:'Legend of Zelda Triforce Stud Earring Set - Gold Plated & Premium Steel', description: "Fancy the Power of the legendary Triforce? Well, that's exactly the opportunity you have before you with this beautiful steel Triforce earrings. Premium Stainless Steel 316L Triforce earrings, depicting the three triangles of power, giving you Wisdom, Power, and Courage!", 
    price: 19.89, seller_id: u26.id )

    tag21 = Tag.create(category_id: cat1.id , product_id: p13.id)
    tag22 = Tag.create(category_id: cat9.id , product_id: p13.id)




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
★ Illustrated backing card included", price: 8.82, seller_id: u27.id )

    tag23 = Tag.create(category_id: cat6.id , product_id: p14.id)
    tag24 = Tag.create(category_id: cat8.id , product_id: p14.id)
    tag25 = Tag.create(category_id: cat15.id , product_id: p14.id)




file131 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy1.jpg')
file132 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy2.jpg')
file133 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/froggy2.jpg')

p14.photos.attach(io: file131, filename: 'froggy1.jpg')
p14.photos.attach(io: file132, filename: 'froggy2.jpg')
p14.photos.attach(io: file133, filename: 'froggy3.jpg')





p15 = Product.create(name:'League of Legends - DJ Sona LED panel for Cosplay - costume prop video game gift', description: "Up for sale is a flexible led panel that is programmed to imitate Dj Sona's animation from league of legend", 
    price: 182.61, seller_id: u18.id )

    tag26 = Tag.create(category_id: cat9.id , product_id: p15.id)
    tag27 = Tag.create(category_id: cat11.id , product_id: p15.id)




file160 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/sona1.jpg')
file161 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/sona2.jpg')

p15.photos.attach(io: file160, filename: 'sona1.jpg')
p15.photos.attach(io: file161, filename: 'sona2.jpg')




p16 = Product.create(name:'Kirby X Sailor Moon Enamel Pin', description: "The pin will be lovingly packaged on a cute backing card and sealed to protect the pin during delivery.", 
    price: 10.74, seller_id: u21.id )

        tag28 = Tag.create(category_id: cat6.id , product_id: p16.id)
        tag29 = Tag.create(category_id: cat9.id , product_id: p16.id)
        tag30 = Tag.create(category_id: cat15.id , product_id: p16.id)



file162 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby1.jpg')
file163 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby2.jpg')
file164 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/kirby3.jpg')

p16.photos.attach(io: file162, filename: 'kirby1.jpg')
p16.photos.attach(io: file163, filename: 'kirby2.jpg')
p16.photos.attach(io: file164, filename: 'kirby3.jpg')






p17 = Product.create(name:'One Piece - Iron On Patch', description: "Can be used for daily wear or cosplay", 
    price: 5.00, seller_id: u7.id )


    tag31 = Tag.create(category_id: cat2.id , product_id: p17.id)
    tag32 = Tag.create(category_id: cat8.id , product_id: p17.id)


file150 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepiece1.jpg')
file151 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepiece2.jpg')


p17.photos.attach(io: file150, filename: 'onepiece1.jpg')
p17.photos.attach(io: file151, filename: 'onepiece2.jpg')





p18 = Product.create(name:'One Punch Man Mug, Anime, Anime Mug', description: "No returns or exchanges
But please contact me if you have any problems with your order.", price: 15.00, seller_id: u11.id )
    
tag33 = Tag.create(category_id: cat3.id , product_id: p18.id)
tag34 = Tag.create(category_id: cat8.id , product_id: p18.id)


file136 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepunch1.jpg')
file137 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/onepunch2.jpg')

p18.photos.attach(io: file136, filename: 'onepunch1.jpg')
p18.photos.attach(io: file137, filename: 'onepunch2.jpg')





p19 = Product.create(name:'Cute Sleeping Corgi T-Shirt Corgi Shirt Gift For Dog Lovers Soft Cotton Dog Owner Tee Top ', description: "Printed using direct to garment printing process, for enhanced quality and durability.", 
    price:23.61, seller_id: u9.id )

    tag35 = Tag.create(category_id: cat2.id , product_id: p19.id)


file154 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt1.jpg')
file155 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt2.jpg')
file156 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/corgishirt3.jpg')


p19.photos.attach(io: file154, filename: 'corgishirt1.jpg')
p19.photos.attach(io: file155, filename: 'corgishirt2.jpg')
p19.photos.attach(io: file156, filename: 'corgishirt3.jpg')




p20 = Product.create(name:'Spongebob - Patrick Star Eamel pin', description: "Perfect for yourself or a friend! ", 
    price: 11.00, seller_id: u26.id )

        tag46 = Tag.create(category_id: cat6.id , product_id: p20.id)
        tag47 = Tag.create(category_id: cat10.id , product_id: p20.id)
        tag48 = Tag.create(category_id: cat15.id , product_id: p20.id)


file157 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/patrick1.jpg')


p20.photos.attach(io: file157, filename: 'patrick1.jpg')






p21 = Product.create(name:'Cute UwU Mug', description: "Printed using direct to garment printing process, for enhanced quality and durability.", 
    price:23.61, seller_id: u8.id )

        tag49 = Tag.create(category_id: cat3.id , product_id: p21.id)
        tag50 = Tag.create(category_id: cat10.id , product_id: p21.id)


file158 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/uwu1.jpg')
file159 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/uwu2.jpg')


p21.photos.attach(io: file158, filename: 'uwu1.jpg')
p21.photos.attach(io: file159, filename: 'uwu2.jpg')



p22 = Product.create(name:'Green Frog Meme, Meme pin, Sad Pepe Meme Pin Brooch', description: "This Sad Pepe meme enamel pin ships world wide.", 
    price: 7.61, seller_id: u28.id )

        tag51 = Tag.create(category_id: cat6.id , product_id: p22.id)
        tag52 = Tag.create(category_id: cat10.id , product_id: p22.id)
        tag53 = Tag.create(category_id: cat15.id , product_id: p22.id)


file144 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe1.jpg')
file145 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe2.jpg')
file146 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/pepe3.jpg')

p22.photos.attach(io: file144, filename: 'pepe1.jpg')
p22.photos.attach(io: file145, filename: 'pepe2.jpg')
p22.photos.attach(io: file146, filename: 'pepe3.jpg')





p23 = Product.create(name:'This Is Fine Dog Meme Cross Stitch Pattern', description: "If this dog can accept his fate and weather the storm, why can't you?!", 
    price: 5.61, seller_id: u12.id )

        tag54 = Tag.create(category_id: cat2.id , product_id: p23.id)
        tag55 = Tag.create(category_id: cat10.id , product_id: p23.id)



file147 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/thisisfine1.jpg')
file148 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/thisisfine2.jpg')

p23.photos.attach(io: file147, filename: 'thisisfine1.jpg')
p23.photos.attach(io: file148, filename: 'thisisfine2.jpg')




p24 = Product.create(name:'You\'re My National Treasure Mug - Nicolas Cage Meme Coffee Mug, Funny Nic Cage', description: "Best Seller! Original Nicolas Cage You\'re My National Treasure design printed on both sides. Makes the perfect Valentine's day gift for your meme-loving significant other.", 
    price: 15.72, seller_id: u29.id )

        tag56 = Tag.create(category_id: cat3.id , product_id: p24.id)
        tag57 = Tag.create(category_id: cat10.id , product_id: p24.id)


file165 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage1.jpg')
file166 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage2.jpg')
file167 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/cage3.jpg')

p24.photos.attach(io: file165, filename: 'cage1.jpg')
p24.photos.attach(io: file166, filename: 'cage2.jpg')
p24.photos.attach(io: file167, filename: 'cage3.jpg')





p25 = Product.create(name:'Michael Scott Sequin Pillow | The Office TV Show | 16 x 16 inches | Mermaid Pillow | Meme Gift', description: "Michael Scott Sequin Pillow. Free U.S. Shipping. U.S. delivery takes 2 - 5 days. Processing Time: 1 - 2 business days.", 
    price: 18.00, seller_id: u13.id )

    tag58 = Tag.create(category_id: cat3.id , product_id: p25.id)
    tag59 = Tag.create(category_id: cat10.id , product_id: p25.id)



file168 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/office1.jpg')
file169 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/office2.jpg')

p25.photos.attach(io: file168, filename: 'office1.jpg')
p25.photos.attach(io: file169, filename: 'office2.jpg')








p26 = Product.create(name:'Doodlebob Spongebob Embroidery Hoop', description: "MIHOY MINOYYYY", 
    price: 15.00, seller_id: u17.id )


    tag60 = Tag.create(category_id: cat3.id , product_id: p26.id)
    tag61 = Tag.create(category_id: cat10.id , product_id: p26.id)


file170 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/mihoy1.jpg')
file171 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/mihoy2.jpg')

p26.photos.attach(io: file170, filename: 'mihoy1.jpg')
p26.photos.attach(io: file171, filename: 'mihoy2.jpg')







p27 = Product.create(name:'Kawaii Watercolor Miyazaki Totoro Japanese Anime Ghibli Posters Prints', description: "Studio Ghibli", 
    price: 7.86, seller_id: u22.id )

    tag62 = Tag.create(category_id: cat5.id , product_id: p27.id)
    tag63 = Tag.create(category_id: cat8.id , product_id: p27.id)
    tag64 = Tag.create(category_id: cat13.id , product_id: p27.id)


file172 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli11.jpg')
file173 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli12.jpg')
file174 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/ghibli13.jpg')

p27.photos.attach(io: file172, filename: 'ghibli11.jpg')
p27.photos.attach(io: file173, filename: 'ghibli12.jpg')
p27.photos.attach(io: file174, filename: 'ghibli13.jpg')




p28 = Product.create(name:'NEW My Hero Academia Double-Sided Pillow Plush', description: "How cute are these chibi cat My Hero Academia characters? Made with extra soft and squishy material to meet all your cuddle time needs!", 
    price: 23.37, seller_id: u46.id )

        tag65 = Tag.create(category_id: cat3.id , product_id: p28.id)
        tag66 = Tag.create(category_id: cat8.id , product_id: p28.id)
        tag67 = Tag.create(category_id: cat17.id , product_id: p28.id)


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
    price: 2.00, seller_id: u31.id )

        tag68 = Tag.create(category_id: cat5.id , product_id: p29.id)
        tag69 = Tag.create(category_id: cat9.id , product_id: p29.id)
        tag70 = Tag.create(category_id: cat16.id , product_id: p29.id)


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
author_id: u34.id, product_id: p29.id, rating: 4)

r116 = Review.create(body: 'Super cute and excellent quality!', 
author_id: u16.id, product_id: p29.id, rating: 5)




p30 = Product.create(name:'Large Magikarp Plush', description: "ミ☆ Magikarp Plush ミ☆\n
🎏🐟💧🌊 Magikarp used splash! But nothing happened! 🎏🐟💧🌊\n
💕✨ Perfect for collecting or cosplaying!\,
✂️✨ This plush is machine-sewn, with hand-stitched details and made entirely of fleece and filled with polyester stuffing.", 
    price: 80.00, seller_id: u22.id )

    tag71 = Tag.create(category_id: cat6.id , product_id: p30.id)
    tag72 = Tag.create(category_id: cat9.id , product_id: p30.id)
    tag73 = Tag.create(category_id: cat17.id , product_id: p30.id)


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
    price: 40.00, seller_id: u32.id )

        tag74 = Tag.create(category_id: cat5.id , product_id: p31.id)
        tag75 = Tag.create(category_id: cat9.id , product_id: p31.id)
        tag76 = Tag.create(category_id: cat13.id , product_id: p31.id)


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




p32 = Product.create(name:'SMOKU Fighting x Smoking Collab FUNNY Custom Vinyl Sticker, Limited Edition Sticker, Stickers, Vinyl Stickers, Custom Stickers, Laptop Sticker', description: "- 1x Custom Vinyl Sticker\n
- Limited Edition Custom Design\n
- Each Sticker measures roughly between 3-4 Inches\n
- Highest Quality Possible", 
price: 1.99, seller_id: u21.id )

        tag77 = Tag.create(category_id: cat8.id , product_id: p32.id)
        tag78 = Tag.create(category_id: cat16.id , product_id: p32.id)


file192 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/goku1.jpg')
file193 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/goku2.jpg')

p32.photos.attach(io: file193, filename: 'goku2.jpg')
p32.photos.attach(io: file192, filename: 'goku1.jpg')

r123 = Review.create(body: 'The stickers are hilarious and definitely worth the wait!', 
author_id: u19.id, product_id: p32.id, rating: 4)

r124 = Review.create(body: 'Great sticker, was a gift to my friend and they loved it', 
author_id: u29.id, product_id: p32.id, rating: 5)





p33 = Product.create(name:'Plus Ultra Hoodie, Manga My Hero Academia Shirt - BNHA, Unisex Anime Hoodie', description: "All of our items are made on-demand especially for you. Designs are vinyl printed onto high quality 100% cotton t-shirts.", 
    price: 28.14, seller_id: u11.id )

            tag79 = Tag.create(category_id: cat2.id , product_id: p33.id)
            tag80 = Tag.create(category_id: cat8.id , product_id: p33.id)


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
    price: 16.89, seller_id: u25.id )

    tag81 = Tag.create(category_id: cat5.id , product_id: p34.id)
    tag82 = Tag.create(category_id: cat8.id , product_id: p34.id)
    tag83 = Tag.create(category_id: cat13.id , product_id: p34.id)


file196 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mobpsycho1.jpg')
file197 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mobpsycho2.jpg')

p34.photos.attach(io: file196, filename: 'mobpsycho1.jpg')
p34.photos.attach(io: file197, filename: 'mobpsycho2.jpg')

r128 = Review.create(body: 'Exactly what I hoped for and showed up after only a couple days of ordering it.', 
author_id: u39.id, product_id: p34.id, rating: 5)





p35 = Product.create(name:'Casual Weeb UwU Decal, Japan Inspired, Weeaboo Vinyl Decal, Laptop Sticker, Car Decal.', description: "I watch a lot of anime, it's no big deal..... You know.... We have a matching tee.... just sayin' (´・ω・`)", 
    price: 4.49, seller_id: u21.id )


    tag84 = Tag.create(category_id: cat5.id , product_id: p35.id)
    tag85 = Tag.create(category_id: cat10.id , product_id: p35.id)
    tag86 = Tag.create(category_id: cat16.id , product_id: p35.id)


file198 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/weebsticker1.jpg')
p35.photos.attach(io: file198, filename: 'weebsticker1.jpg')

r129 = Review.create(body: 'Looks amazing but the sticker was a little hard to install it kept sticking to its self instead of the glass', 
author_id: u45.id, product_id: p35.id, rating: 3)

r130 = Review.create(body: 'LOVE IT! FAST SHIPPING. QUALITY! EASY APPLICATION! UWU ✨', 
author_id: u27.id, product_id: p35.id, rating: 5)




p36 = Product.create(name:'Studio Ghibli No-Face Spirited Away Vinyl Sticker Decal, 2 Sizes, Waterproof & Weatherproof Durable Anime Sticker, FREE SHIPPING!', description: "Channel your inner No-Face with this adorable vinyl sticker illustrated by me!", 
    price: 3.49, seller_id: u50.id )

    tag87 = Tag.create(category_id: cat5.id , product_id: p36.id)
    tag88 = Tag.create(category_id: cat8.id , product_id: p36.id)
    tag89 = Tag.create(category_id: cat16.id , product_id: p36.id)


file199 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/noface11.jpg')
file200 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/noface12.jpg')
p36.photos.attach(io: file199, filename: 'noface11.jpg')
p36.photos.attach(io: file200, filename: 'noface12.jpg')

r131 = Review.create(body: 'So cute and detailed! Looks great on my car.', 
author_id: u31.id, product_id: p36.id, rating: 5)





p37 = Product.create(name:'Hatsune Miku keycaps - Clay and resin keycap Cherry MX Mechanical Gaming Keyboards', description: "Perfect gift for a Hatsune Miku fan!", 
    price: 14.99, seller_id: u11.id )

        tag90 = Tag.create(category_id: cat4.id , product_id: p37.id)
        tag91 = Tag.create(category_id: cat8.id , product_id: p37.id)
        tag92 = Tag.create(category_id: cat12.id , product_id: p37.id)


file201 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey1.jpg')
file202 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey2.jpg')
file203 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/mikukey3.jpg')

p37.photos.attach(io: file201, filename: 'mikukey1.jpg')
p37.photos.attach(io: file202, filename: 'mikukey2.jpg')
p37.photos.attach(io: file203, filename: 'mikukey3.jpg')

r132 = Review.create(body: 'So cute and detailed! Perfect addition to my keycap collection', 
author_id: u17.id, product_id: p37.id, rating: 5)




p38 = Product.create(name:'Noface Keycap', description: "When I was a child, I felt in love with the Little White Totoro character in My Neighbor Totoro, a Japanese animation movie. He is a cute and amazing figure that burns in to my mind. That is why I want to make Little White Totoro keycaps. I hope this keycap would bring lovely memory about that sweet animated film.", 
    price: 49.00, seller_id: u41.id )

        tag93 = Tag.create(category_id: cat4.id , product_id: p38.id)
        tag94 = Tag.create(category_id: cat8.id , product_id: p38.id)
        tag95 = Tag.create(category_id: cat12.id , product_id: p38.id)

    

file204 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey1.jpg')
file205 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey2.jpg')
file206 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nofacekey3.jpg')

p38.photos.attach(io: file204, filename: 'nofacekey1.jpg')
p38.photos.attach(io: file205, filename: 'nofacekey2.jpg')
p38.photos.attach(io: file206, filename: 'nofacekey3.jpg')

r133 = Review.create(body: 'Gorgeous!!! This took a long time to ship, but it was definitely worth the wait. Nice packaging, incredible detail and quality.', 
author_id: u37.id, product_id: p38.id, rating: 5)

r134 = Review.create(body: 'Absolutely love it! So adorable! It looks even cooler when with the blue light shines through it from my keyboard!', 
author_id: u45.id, product_id: p38.id, rating: 5)







p39 = Product.create(name:'EVA(新世紀エヴァンゲリオン) NERV logo inspired keycap for mechanical keyboard', description: "Inspired by NERV order from 新世紀エヴァンゲリオン\n
This is a R4(keyboard area including ESC,F1-F12,etc) keycap that best performance on cherry MX keyboards. Please note it cannot use on membrane keyboards.", 
    price: 18.00, seller_id: u33.id )

        tag96 = Tag.create(category_id: cat4.id , product_id: p39.id)
        tag97 = Tag.create(category_id: cat8.id , product_id: p39.id)
        tag98 = Tag.create(category_id: cat12.id , product_id: p39.id)


file207 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey1.jpg')
file208 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evakey2.jpg')

p39.photos.attach(io: file207, filename: 'evakey1.jpg')
p39.photos.attach(io: file208, filename: 'evakey2.jpg')


r135 = Review.create(body: 'Excellent quality! The packaging and the keycap itself is very good.', 
author_id: u1.id, product_id: p39.id, rating: 5)

r136 = Review.create(body: 'quick easy and communicative, keycaps were made well', 
author_id: u2.id, product_id: p39.id, rating: 3)







p40 = Product.create(name:'Neon Genesis Evangelion - Asuka and Rei 3" Acrylic Charm (Double Sided)', description: "Originally designed artwork of Asuka and Rei from the classic anime, \"Neon Genesis Evangelion\" by GAINAX.
\nPrinted professionally on 3mm acrylic, each charm is 3 inches in height not including the metal keyring chain.", 
    price: 14.00, seller_id: u44.id )


            tag99 = Tag.create(category_id: cat6.id , product_id: p40.id)
            tag100 = Tag.create(category_id: cat8.id , product_id: p40.id)


file209 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evacharm1.jpg')
file210 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evacharm2.jpg')
file211 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evacharm3.jpg')
file212 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/evacharm4.jpg')

p40.photos.attach(io: file209, filename: 'evacharm1.jpg')
p40.photos.attach(io: file210, filename: 'evacharm2.jpg')
p40.photos.attach(io: file211, filename: 'evacharm3.jpg')
p40.photos.attach(io: file212, filename: 'evacharm4.jpg')


r137 = Review.create(body: 'So obsessed with this charm!! Super cute love this anime so much', 
author_id: u3.id, product_id: p40.id, rating: 5)

r138 = Review.create(body: 'Amazing! Thank you so much for adding more so I could purchase this for my husband. He\'s going to love it!', 
author_id: u4.id, product_id: p40.id, rating: 3)





p41 = Product.create(name:'Painted Premium (Limited Edition) Bandai MG 1/100 "Altron Gundam EW"', description: 'This one is an order-placing item. *Premium Bandai item is more expensive than the normal ones.*\n
The name of this kit: Premium (Limited Edition) Bandai MG 1/100 "Altron Gundam EW"', 
    price: 375.28, seller_id: u50.id )

    tag101 = Tag.create(category_id: cat6.id , product_id: p41.id)
    tag102 = Tag.create(category_id: cat8.id , product_id: p41.id)
    tag103 = Tag.create(category_id: cat18.id , product_id: p41.id)


file213 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron1.jpg')
file214 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron2.jpg')
file215 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron3.jpg')
file216 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/altron4.jpg')

p41.photos.attach(io: file213, filename: 'altron1.jpg')
p41.photos.attach(io: file214, filename: 'altron2.jpg')
p41.photos.attach(io: file215, filename: 'altron3.jpg')
p41.photos.attach(io: file216, filename: 'altron4.jpg')


r139 = Review.create(body: 'Just simply amazing craftsmanship. Even better communication throughout the whole process. In awe of the paintwork and will definitely order again.', 
author_id: u5.id, product_id: p41.id, rating: 5)

r140 = Review.create(body: 'Perfect!, good quality and communication.', 
author_id: u6.id, product_id: p41.id, rating: 3)




p42 = Product.create(name:'Your Name - Kimi no Na wa Limited Edition Poster Print', description: "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. But things become even more complicated when the boy and girl decide to meet in person. \n 
A3 -High Quality Production digital Press Print 350 GSM (*buisness card thickness)", 
    price: 12.79, seller_id: u49.id )

    tag104 = Tag.create(category_id: cat5.id , product_id: p42.id)
    tag105 = Tag.create(category_id: cat8.id , product_id: p42.id)
    tag106 = Tag.create(category_id: cat13.id , product_id: p42.id)


file217 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yourname1.jpg')

p42.photos.attach(io: file217, filename: 'yourname1.jpg')

r141 = Review.create(body: 'Beauitful print.  The artwork is great and will definitely order again.', 
author_id: u7.id, product_id: p42.id, rating: 5)




p43 = Product.create(name:'Finn the Human and Jake the Dog Adventure Time Plush', description: "Handmade crochet inspired Finn the Human and Jake the Dog \n
Finn and Jake are a must have for any fan of the show 'Adventure Time'!\n
After watching the show I had to make one for myself. These guys are so soft and cuddly!", 
    price: 35.00, seller_id: u48.id )

    tag107 = Tag.create(category_id: cat6.id , product_id: p43.id)
    tag108 = Tag.create(category_id: cat8.id , product_id: p43.id)
    tag109 = Tag.create(category_id: cat17.id , product_id: p43.id)



file218 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake1.jpg')
file219 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake2.jpg')
file220 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake3.jpg')
file221 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/finnjake4.jpg')

p43.photos.attach(io: file218, filename: 'finnjake1.jpg')
p43.photos.attach(io: file219, filename: 'finnjake2.jpg')
p43.photos.attach(io: file220, filename: 'finnjake3.jpg')
p43.photos.attach(io: file221, filename: 'finnjake4.jpg')


r142 = Review.create(body: 'Very well made! Impressive.', 
author_id: u8.id, product_id: p43.id, rating: 5)

r143 = Review.create(body: 'Impressively well made with every stitch in its place. It\'s hard to explain the effect such skilled handiwork has in person, but it is just perfect. Makes the little fellow even cuter. Also, he\'s a great size for cuddling.', 
author_id: u9.id, product_id: p43.id, rating: 5)







p44 = Product.create(name:'Bubbline | Hard Enamel Pin | Adventure Time Marceline Bubblegum lapel pin', description: "Hard enamel pin featuring Princess Bubblegum and Marceline the vampire queen from Adventure Time", 
    price: 12.38, seller_id: u47.id )


        tag110 = Tag.create(category_id: cat6.id , product_id: p44.id)
        tag111 = Tag.create(category_id: cat8.id , product_id: p44.id)
        tag112 = Tag.create(category_id: cat15.id , product_id: p44.id)



file222 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bubbeline1.jpg')
file223 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bubbeline2.jpg')


p44.photos.attach(io: file222, filename: 'bubbeline1.jpg')
p44.photos.attach(io: file223, filename: 'bubbeline2.jpg')

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
    price: 15.00, seller_id: u46.id )


    tag113 = Tag.create(category_id: cat5.id , product_id: p45.id)
    tag114 = Tag.create(category_id: cat8.id , product_id: p45.id)
    tag115 = Tag.create(category_id: cat13.id , product_id: p45.id)


file224 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/korrasami1.jpg')


p45.photos.attach(io: file224, filename: 'korrasami1.jpg')

r147 = Review.create(body: 'Got this for a friend\'s birthday and she was thrilled! Very fast shipping too! :D', 
author_id: u12.id, product_id: p45.id, rating: 5)

r148 = Review.create(body: 'My package arrived not only quickly, but safely thanks to the care taken with the packaging! <3 Which is wonderful, because the art inside is absolutely amazing.',
author_id: u13.id, product_id: p45.id, rating: 5)

r149 = Review.create(body: 'Beautiful and Quick to ship out! Thank you <3',
author_id: u14.id, product_id: p45.id, rating: 4)







p46 = Product.create(name:'Adventure Time: Lumpy Space Princess Soft Enamel Pin', description: "Celebrate your favorite Adventure Time characters with our custom enamel pin perfect for your back pack, jacket, t-shirt, hat, or other apparel and accessories. Our high quality enamel pins are made with a black nickel backing with double needles. It comes with two rubber guards to keep your pin safely attached to your accessories.", 
    price: 9.59, seller_id: u45.id )

    tag116 = Tag.create(category_id: cat6.id , product_id: p46.id)
    tag117 = Tag.create(category_id: cat8.id , product_id: p46.id)
    tag118 = Tag.create(category_id: cat15.id , product_id: p46.id)


file225 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp1.jpg')
file226 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp2.jpg')
file227 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lsp3.jpg')


p46.photos.attach(io: file225, filename: 'lsp1.jpg')
p46.photos.attach(io: file226, filename: 'lsp2.jpg')
p46.photos.attach(io: file227, filename: 'lsp3.jpg')

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
    price: 35.95, seller_id: u46.id )


        tag119 = Tag.create(category_id: cat2.id , product_id: p47.id)
        tag120 = Tag.create(category_id: cat8.id , product_id: p47.id)


file228 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie1.jpg')
file229 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie2.jpg')
file230 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie3.jpg')
file231 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jojohoodie4.jpg')



p47.photos.attach(io: file228, filename: 'jojohoodie1.jpg')
p47.photos.attach(io: file229, filename: 'jojohoodie2.jpg')
p47.photos.attach(io: file230, filename: 'jojohoodie3.jpg')
p47.photos.attach(io: file231, filename: 'jojohoodie4.jpg')

r154 = Review.create(body: 'Size is a lot smaller than expected', 
author_id: u19.id, product_id: p47.id, rating: 3)

r155 = Review.create(body: 'Shipped quickly. In great condition. Thank you!',
author_id: u20.id, product_id: p47.id, rating: 5)

r156 = Review.create(body: '',
author_id: u21.id, product_id: p47.id, rating: 4)

r157 = Review.create(body: 'Perfect gift for my best friend! :)',
author_id: u22.id, product_id: p47.id, rating: 5)







p47_1 = Product.create(name:'Double Sided Inuyasha Keychain', description: "A cute little dual sided acrylic keychain featuring my art.",
    price: 35.95, seller_id: u45.id )

    tag121 = Tag.create(category_id: cat6.id , product_id: p47_1.id)
    tag122 = Tag.create(category_id: cat8.id , product_id: p47_1.id)


file232 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha1.jpg')
file233 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha2.jpg')
file234 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/inuyasha3.jpg')



p47_1.photos.attach(io: file232, filename: 'inuyasha1.jpg')
p47_1.photos.attach(io: file233, filename: 'inuyasha2.jpg')
p47_1.photos.attach(io: file234, filename: 'inuyasha3.jpg')

r158 = Review.create(body: 'I\'m a big fan of Inuyasha x Kagome and of acrylic keychains, so I think this is a wonderful keychain! I love it. The double sided nature of the artwork is super cute and gives the charm a lot of personality and the longer chain plus simple silver clasp compliment it nicer than say, the shorter rose-gold clasps that you often see on acrylic charms. The artwork has a layer of epoxy covering it on the side it was printed onto, so it\'s protected from being scratched off if it\'s on a key ring. It arrived fast and my overall buying experience was great.', 
author_id: u23.id, product_id: p47_1.id, rating: 5)

r159 = Review.create(body: 'Love love love!! Will use this store again!',
author_id: u24.id, product_id: p47_1.id, rating: 5)

r160 = Review.create(body: 'Just as expected! Love it!',
author_id: u25.id, product_id: p47_1.id, rating: 4)







p48 = Product.create(name:'Aesthetic Cowboy Bebop || Anime Vinyl Sticker', description: "Aesthetic Graphic Design of Spike from Cowboy Bebop! \n
• A great sticker for your laptop, phone, skateboard, hydroflask, car, etc.",
    price: 4.99, seller_id: u44.id )

    tag123 = Tag.create(category_id: cat5.id , product_id: p48.id)
    tag124 = Tag.create(category_id: cat8.id , product_id: p48.id)
    tag125 = Tag.create(category_id: cat15.id , product_id: p48.id)


file235 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cowboybebop1.jpg')

p48.photos.attach(io: file235, filename: 'cowboybebop1.jpg')


r161 = Review.create(body: 'Absolutely stunning! The sticker quality is fantastic and the design, flawless.',
author_id: u26.id, product_id: p48.id, rating: 5)

r162 = Review.create(body: 'so eye catching! looks nice on my laptop case',
author_id: u27.id, product_id: p48.id, rating: 4)




p49 = Product.create(name:'Ryuko Kill la Kill Double Sided Acrylic Charms 1.5"', description: "Charms cut out of clear acrylic. Very durable, water resistant and sealed with gloss! All keychains includes a split ring with a choice of: star, heart or silver chain.",
    price: 12.00, seller_id: u43.id )

        tag126 = Tag.create(category_id: cat5.id , product_id: p49.id)
        tag127 = Tag.create(category_id: cat8.id , product_id: p49.id)
        tag129 = Tag.create(category_id: cat15.id , product_id: p49.id)


file236 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/klk1.jpg')

p49.photos.attach(io: file236, filename: 'klk1.jpg')

r163 = Review.create(body: 'Came with the perfect sticker as a bonus! I love it !',
author_id: u28.id, product_id: p49.id, rating: 4)




p50 = Product.create(name:'symphogear holographic sticker', description: "a design based on s1e13 of senki zesshou symphogear 👊",
    price: 4.00, seller_id: u42.id )

            tag130 = Tag.create(category_id: cat5.id , product_id: p50.id)
            tag131 = Tag.create(category_id: cat8.id , product_id: p50.id)
            tag132 = Tag.create(category_id: cat16.id , product_id: p50.id)


file237 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/symphogear1.jpg')
file238 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/symphogear2.jpg')

p50.photos.attach(io: file237, filename: 'symphogear1.jpg')
p50.photos.attach(io: file238, filename: 'symphogear2.jpg')

r164 = Review.create(body: 'Cute! Boyfriend loved it',
author_id: u29.id, product_id: p50.id, rating: 4)

r165 = Review.create(body: 'Wonderful sticker. Love the artwork and will purchase from them again',
author_id: u30.id, product_id: p50.id, rating: 5)

r166 = Review.create(body: 'I love it! Thank you for the other two stickers as well. They were very cute.',
author_id: u31.id, product_id: p50.id, rating: 5)





p50_1 = Product.create(name:'Attack on Titan Backpack', description: "The perfect backpack for any Attack on Titan fan! Made from premium quality material, this bag will help you carry your things in style.",
    price: 24.00, seller_id: u41.id )

    tag133 = Tag.create(category_id: cat8.id , product_id: p50_1.id)


file239 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk1.jpg')
file240 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk2.jpg')
file241 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk3.jpg')
file242 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk4.jpg')
file243 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk5.jpg')

p50_1.photos.attach(io: file239, filename: 'snk1.jpg')
p50_1.photos.attach(io: file240, filename: 'snk2.jpg')
p50_1.photos.attach(io: file241, filename: 'snk3.jpg')
p50_1.photos.attach(io: file242, filename: 'snk4.jpg')
p50_1.photos.attach(io: file243, filename: 'snk5.jpg')

r167 = Review.create(body: 'Amazing backpack! I love SNK!! YAAAAAAA',
author_id: u32.id, product_id: p50_1.id, rating: 4)

r168 = Review.create(body: 'MIKASA IS MY WAIFU',
author_id: u33.id, product_id: p50_1.id, rating: 5)

r169 = Review.create(body: 'Nice backpack, holds a lot of stuff',
author_id: u34.id, product_id: p50_1.id, rating: 5)






p51 = Product.create(name:'Polymer Clay Umaru -Chan Chibi Figurine Keychain or Bagcharm. Anime chibi figurine. Polymer Clay chibi', description: "İt inspired Umaru-Chan who is a *character in anime Himouto",
    price: 35.00, seller_id: u40.id )

    tag134 = Tag.create(category_id: cat6.id , product_id: p51.id)
    tag135 = Tag.create(category_id: cat8.id , product_id: p51.id)


file244 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/umaru1.jpg')


p51.photos.attach(io: file244, filename: 'umaru1.jpg')


r170 = Review.create(body: 'Great attention to detail and a pleasure to work with!',
author_id: u32.id, product_id: p51.id, rating: 4)





p52 = Product.create(name:'Millenium Puzzle: Yu-Gi-Oh', description: "Absolutely lovely prop for Y'all trading card fans!\n
Can be used for some cosplay or just to have on your desk. It'll look fantastic anywhere.",
    price: 20.00, seller_id: u39.id )

    tag136 = Tag.create(category_id: cat6.id , product_id: p52.id)
    tag137 = Tag.create(category_id: cat8.id , product_id: p52.id)

file245 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh1.jpg')
file246 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh2.jpg')
file247 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/yugioh3.jpg')


p52.photos.attach(io: file245, filename: 'yugioh1.jpg')
p52.photos.attach(io: file246, filename: 'yugioh2.jpg')
p52.photos.attach(io: file247, filename: 'yugioh3.jpg')


r171 = Review.create(body: 'Omg. My boyfriend’s brother is gonna LOVE THIS. There was some literal technical difficulties, but things happen. I probably would have sent it in a box, but it was still nicely bubble-wrapped and item appeared perfectly fine. Definitely still worth the wait, and I’m super psyched to give to him today. 😁',
author_id: u33.id, product_id: p52.id, rating: 5)

r172 = Review.create(body: 'Met all of my expectations and more! This was a gift from someone special and they were ecstatic to receive it. Well done, great quality!',
author_id: u34.id, product_id: p52.id, rating: 4)





p53 = Product.create(name:'MLP Applejack plush', description: "Adorable Applejack plushie from the show My Little Pony",
    price: 20.00, seller_id: u39.id )

    tag138 = Tag.create(category_id: cat6.id , product_id: p53.id)
    tag139 = Tag.create(category_id: cat8.id , product_id: p53.id)
    tag140 = Tag.create(category_id: cat17.id , product_id: p53.id)

file248 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack1.jpg')
file249 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack2.jpg')
file250 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack3.jpg')
file251 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/applejack4.jpg')



p53.photos.attach(io: file248, filename: 'applejack1.jpg')
p53.photos.attach(io: file249, filename: 'applejack2.jpg')
p53.photos.attach(io: file250, filename: 'applejack3.jpg')
p53.photos.attach(io: file251, filename: 'applejack4.jpg')



r173 = Review.create(body: 'Exactly what I expected. High-quality product, perfectly suits to XL Starlight Glimmer plushie. She looks great with them! And all this at a reasonable price.',
author_id: u35.id, product_id: p53.id, rating: 5)

r174 = Review.create(body: 'APPLE JACK IS BEST PONY!! ',
author_id: u36.id, product_id: p53.id, rating: 4)

r175 = Review.create(body: 'wrong. pinkie pie is best pony',
author_id: u37.id, product_id: p53.id, rating: 3)

r176 = Review.create(body: 'FLUTTERSHY FTW!!!',
author_id: u38.id, product_id: p53.id, rating: 4)







p54 = Product.create(name:'Japanese Peach Soft Drink - T-Shirt/Shirt/Top/Tee - Aesthetic T-Shirt,Japanese Shirt,Aesthetic,Aesthetic Clothing,Japanese t-shirt,Japan', description: "Japanese Peach Soft Drink T-Shirt which is made of premium quality ring spun cotton for a great quality soft feel, and comfortable retail fit.",
    price: 21.75, seller_id: u38.id )

    tag141 = Tag.create(category_id: cat2.id , product_id: p54.id)

file252 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt1.jpg')
file253 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt2.jpg')
file254 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt3.jpg')
file255 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peachshirt4.jpg')



p54.photos.attach(io: file252, filename: 'peachshirt1.jpg')
p54.photos.attach(io: file253, filename: 'peachshirt2.jpg')
p54.photos.attach(io: file254, filename: 'peachshirt3.jpg')
p54.photos.attach(io: file255, filename: 'peachshirt4.jpg')



r177 = Review.create(body: 'The shirt is perfect. The design is actually dyed into the fabric which is much more high quality than the plastic overlay options in my opinion. It’s also not see-through which you can sometimes run the risk of getting with a white shirt. Love it!!',
author_id: u35.id, product_id: p54.id, rating: 5)

r178 = Review.create(body: 'It’s a cool T-shirt but I think it’s a lil expensive 🍑',
author_id: u36.id, product_id: p54.id, rating: 3)

r179 = Review.create(body: 'Lovely T-Shirts, very happy, thank you!',
author_id: u37.id, product_id: p54.id, rating: 4)






p55 = Product.create(name:'Sailor Moon Themed Nintendo Switch Joy Cons', description: "The joy cons feature a high fidelity, custom paint-job on many of the components. It comes with a set of wrist straps matching the overall design.",
    price: 185.74, seller_id: u37.id )

    tag142 = Tag.create(category_id: cat4.id , product_id: p55.id)
    tag143 = Tag.create(category_id: cat8.id , product_id: p55.id)

file256 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon1.jpg')
file257 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon2.jpg')
file258 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/switchsailormoon3.jpg')

p55.photos.attach(io: file256, filename: 'switchsailormoon1.jpg')
p55.photos.attach(io: file257, filename: 'switchsailormoon2.jpg')
p55.photos.attach(io: file258, filename: 'switchsailormoon3.jpg')

r180 = Review.create(body: 'These are soooo pretty!! ',
author_id: u38.id, product_id: p55.id, rating: 5)






p56 = Product.create(name:'Shiba Inu Earrings - Hand Painted Wooden Dog Studs with Hypoallergenic Posts', description: "A pair of cute shiba inu earrings engraved from 3mm Cherry wood and hand painted with white detail. These earrings are attached to stainless steel hypoallergenic posts for comfortable wearing and are coated in a satin clear coat to minimise paint scratching.",
    price: 16.63, seller_id: u36.id )

    tag144 = Tag.create(category_id: cat1.id , product_id: p56.id)


file259 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibeearring1.jpg')
file260 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibeearring2.jpg')
file261 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/shibeearring3.jpg')

p56.photos.attach(io: file259, filename: 'shibeearring1.jpg')
p56.photos.attach(io: file260, filename: 'shibeearring2.jpg')
p56.photos.attach(io: file261, filename: 'shibeearring3.jpg')

r181 = Review.create(body: 'These are the cutest earrings that I\'ve ever seen! I love even the small details. Thank you so much! Highly recommended.',
author_id: u37.id, product_id: p56.id, rating: 5)
r182 = Review.create(body: 'Exactly like the pictures! Amazingly cute!',
author_id: u36.id, product_id: p56.id, rating: 5)
r183 = Review.create(body: 'Great quality! Looking forward to giving these away as a present... as hard as it will be as they\'re so cute I want to keep them!',
author_id: u35.id, product_id: p56.id, rating: 5)





p57 = Product.create(name:'Pond Koi Keycaps Artisan Mechanical Keyboard Cherry MX Keycap', description: "Resin keycap with a koi pond design, for cherry mx switches",
    price: 43.00, seller_id: u35.id )

    tag145 = Tag.create(category_id: cat4.id , product_id: p57.id)
    tag146 = Tag.create(category_id: cat12.id , product_id: p57.id)

file262 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/koikey1.jpg')
file263 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/koikey2.jpg')


p57.photos.attach(io: file262, filename: 'koikey1.jpg')
p57.photos.attach(io: file263, filename: 'koikey2.jpg')

r184 = Review.create(body: 'This is a beautiful key! It fits well and is well crafted. The seller packed it extremely well - no chance of damage. Shipping was relatively fast given it was international. Really great transaction! Thank you!',
author_id: u34.id, product_id: p57.id, rating: 5)

r185 = Review.create(body: 'I love it, thank you!',
author_id: u33.id, product_id: p57.id, rating: 5)




p58 = Product.create(name:'Summer Fruit Keycap - Artisan Keycap - Handmade Keycap', description: "Resin keycap with summer fruit design, for cherry mx switches",
    price: 43.00, seller_id: u35.id )

    tag147 = Tag.create(category_id: cat4.id , product_id: p58.id)
    tag148 = Tag.create(category_id: cat12.id , product_id: p58.id)
    

file264 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey1.jpg')
file265 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey2.jpg')
file266 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fruitkey3.jpg')


p58.photos.attach(io: file264, filename: 'fruitkey1.jpg')
p58.photos.attach(io: file265, filename: 'fruitkey2.jpg')
p58.photos.attach(io: file266, filename: 'fruitkey3.jpg')

r186 = Review.create(body: 'Beautiful keycaps, great communication with seller.',
author_id: u32.id, product_id: p58.id, rating: 5)

r187 = Review.create(body: 'Fantastic details & couldn\'t be happier. I\'m only buying keycaps from this store. When I first ordered 4 keycaps & received them (in an extremely ornate box / design) I immediately ordered 5 more. ',
author_id: u31.id, product_id: p58.id, rating: 5)







p59 = Product.create(name:'Deep Sea Jellyfish handmade resin artisan Cherry MX keycap', description: "Handmade Resin Keycap For Cherry MX Mechanical Keyboard.
- SA Profile R4- Artisan Keycap",
    price: 39.88, seller_id: u34.id )

     tag149 = Tag.create(category_id: cat4.id , product_id: p59.id)
    tag150= Tag.create(category_id: cat12.id , product_id: p59.id)

file267 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey1.jpg')
file268 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey2.jpg')
file269 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey3.jpg')
file270 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jellykey4.jpg')


p59.photos.attach(io: file267, filename: 'jellykey1.jpg')
p59.photos.attach(io: file268, filename: 'jellykey2.jpg')
p59.photos.attach(io: file269, filename: 'jellykey3.jpg')
p59.photos.attach(io: file270, filename: 'jellykey4.jpg')

r188 = Review.create(body: 'Love it .. just beautiful looks just like picture money well spent',
author_id: u32.id, product_id: p59.id, rating: 5)

r189 = Review.create(body: 'it arrived quicker than expected. Great quality, was a perfect gift.',
author_id: u30.id, product_id: p59.id, rating: 5)








p60 = Product.create(name:'Pokemon starter kit: Mechanical keyboard key caps!', description: "Choooooose your pokemon! Keycap color may vary in size and color. But quality will be the very best that no one ever was.
\n
Each mini charm comes with a strap to attach to bags, backpacks, wallets, phones, and more!
Please handle these handmade charms with care~",
    price: 40.00, seller_id: u34.id )

     tag151 = Tag.create(category_id: cat4.id , product_id: p60.id)
    tag152 = Tag.create(category_id: cat12.id , product_id: p60.id)
    tag153 = Tag.create(category_id: cat9.id , product_id: p60.id)

file271 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey1.jpg')
file272 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey2.jpg')
file273 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/pokekey3.jpg')


p60.photos.attach(io: file271, filename: 'pokekey1.jpg')
p60.photos.attach(io: file272, filename: 'pokekey2.jpg')
p60.photos.attach(io: file273, filename: 'pokekey3.jpg')

r190 = Review.create(body: 'My son loves it. Thanks!!!
Shipping was a bit slow but seller communicated the delays well.',
author_id: u32.id, product_id: p60.id, rating: 4)

r191 = Review.create(body: 'exactly what i wanted, and so cute.',
author_id: u29.id, product_id: p60.id, rating: 5)

r192 = Review.create(body: 'My friend loved it! The shipping was very fast and the key cap arrived in a small box with padding. There were also 2 candies included!',
author_id: u28.id, product_id: p60.id, rating: 5)






p61 = Product.create(name: 'Cherry Blossom WASD Keycaps', description: "Take your mechanical keyboard to Hanamura with these handcrafted cherry blossom keycaps!",
    price: 50.00, seller_id: u33.id )

    tag154 = Tag.create(category_id: cat4.id , product_id: p61.id)
    tag155 = Tag.create(category_id: cat12.id , product_id: p61.id)  

file274 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey1.jpg')
file275 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey2.jpg')
file276 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cherrykey3.jpg')


p61.photos.attach(io: file274, filename: 'cherrykey1.jpg')
p61.photos.attach(io: file275, filename: 'cherrykey2.jpg')
p61.photos.attach(io: file276, filename: 'cherrykey3.jpg')

r193 = Review.create(body: 'Very nicely made keycaps! They fit well on the keyboard',
author_id: u27.id, product_id: p61.id, rating: 5)

r194 = Review.create(body: 'very pretty keys, i love them!',
author_id: u26.id, product_id: p61.id, rating: 4)

r195 = Review.create(body: "Absolutely gorgeous keycaps! Definitely recommend these. I received a set that was too small to fit on my keyboard, which the seller stated had shrunk too much during the curing process. They let me keep the defective set and gladly sent out a replacement via expedited shipping which fit perfectly now.
\n
P.S. The caps do take a bit of extra force to push into the switch correctly, so be careful when you push them down so as to not damage the switch.",
author_id: u25.id, product_id: p61.id, rating: 5)







p62 = Product.create(name: 'Starcraft Crystal Cherry MX Keycap', description: "Crystal Cherry MX keyboard keycap. 3D resin print using Anycubic Photon 3D printer. Hand painted and test fitted. Black base with clear top. Clear top coated in gloss finish.",
    price: 15.00, seller_id: u33.id )

file277 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/crystalkey1.jpg')
file278 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/crystalkey2.jpg')

    tag156 = Tag.create(category_id: cat4.id , product_id: p62.id)
    tag157 = Tag.create(category_id: cat12.id , product_id: p62.id)
    tag158 = Tag.create(category_id: cat9.id , product_id: p62.id)


p62.photos.attach(io: file277, filename: 'crystalkey1.jpg')
p62.photos.attach(io: file278, filename: 'crystalkey2.jpg')

r196 = Review.create(body: 'Looks really cool lit up on my keyboard',
author_id: u24.id, product_id: p62.id, rating: 4)





p63 = Product.create(name: 'GOLD PLATED Harry Potter Necklace Harry Potter Jewelry Harry Poter Necklace Gift potter Hourglass Necklace Harry Potter Time Turner Necklace', description: "The Pendant On This Harry Potter Necklace Has a REAL HOURGLASS That is Filled With REAL Sand, And it Rotates And Turns. The Following Words Are Engraved Onto The Harry Potter Necklace Pendant: 'I Mark The Hours, Every One, Nor Have I Yet Outrun The Sun. My Use And Value, Unto You, Are Gauged By What You Have To Do' (Just Like The Real Time Turner Necklace.) ",
    price: 15.86, seller_id: u32.id )

    tag159 = Tag.create(category_id: cat1.id , product_id: p63.id)

file279 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp11.jpg')
file280 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp12.jpg')
file281 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hp13.jpg')


p63.photos.attach(io: file279, filename: 'hp11.jpg')
p63.photos.attach(io: file280, filename: 'hp12.jpg')
p63.photos.attach(io: file281, filename: 'hp13.jpg')

r197 = Review.create(body: 'I love it! It arrived so quickly and the quality is better than I expected, and it’s really sturdy. The chain is on the more fragile side because I think it’s heavy plastic and not some sort of metal, but that’s easily replaced if you wanted to. It’s a great replica and I’m thrilled. Thank you!!',
author_id: u24.id, product_id: p63.id, rating: 5)

r198 = Review.create(body: 'The perfect gift for one of my bridesmaids',
author_id: u23.id, product_id: p63.id, rating: 4)

r199 = Review.create(body: 'Very nicely wrapped , quick shipping , beautiful necklace ! I will totally buy from this shop again. Thank you.',
author_id: u22.id, product_id: p63.id, rating: 5)

r200 = Review.create(body: 'This product is beautiful!! I’m giving mine to a friend who loves Harry Potter!! It’s great quality and gorgeous!',
author_id: u21.id, product_id: p63.id, rating: 5)






p64 = Product.create(name: 'Elven ears (a pair). Earcuffs, Elf ears, cosplay fantasy decoration for ears elven ear ear cuff elvish earring elf ear', description: "These ear cuffs are made with copper core wire, you can choose the material with which the wire will be plated on, and it also beads from the semiprecious stone. They are sold as a pair and also you can buy one ear.",
    price: 23.00, seller_id: u32.id )

    tag160 = Tag.create(category_id: cat1.id , product_id: p64.id)

file282 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/earcuff1.jpg')

p64.photos.attach(io: file282, filename: 'earcuff1.jpg')

r201 = Review.create(body: 'I love love love this item so much!! Came pretty quick even though I’m from the US and the packaging was protective and neat. Will definitely be purchasing from this shop again!! Thank you!',
author_id: u24.id, product_id: p64.id, rating: 5)

r202 = Review.create(body: 'The ear cuffs are gorgeous! It took me a couple of gos to get the hang of putting them on - but once I’d got it, it was easy. The metal is delicate and easy to manipulate - a little squeeze once they’re on and they’re secure.
I have had loads of compliments. They look really striking against my bright purple hair. Not just for parties: too nice for that. Everyday!',
author_id: u20.id, product_id: p64.id, rating: 4)

r203 = Review.create(body: 'Amazing! Quick delivery, beautiful product. I will defenitely order more from this shop!! 🤩😍',
author_id: u22.id, product_id: p64.id, rating: 5)







p65 = Product.create(name: 'Gudetama Just Chillin Enamel Pin // Gudetama Pins // Sanrio Licensed Pins', description: "Um, so, Gudetama the grumpy egg is all of us chillin in our eggshells, right? This Gudetama Just Chillin enamel pin in hard enamel measures approx 30mm x 25mm. Lazy but cute. Fully Sanrio licensed.",
    price: 8.96, seller_id: u31.id )

    tag161 = Tag.create(category_id: cat6.id , product_id: p65.id)
    tag162 = Tag.create(category_id: cat15.id , product_id: p65.id)


file283 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gudetama1.jpg')
file284 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gudetama2.jpg')

p65.photos.attach(io: file283, filename: 'gudetama1.jpg')
p65.photos.attach(io: file284, filename: 'gudetama2.jpg')

r204 = Review.create(body: 'the cutest pin ever thank you!!
',
author_id: u19.id, product_id: p65.id, rating: 5)

r205 = Review.create(body: 'Great communication and quality product!! Will definitely shop here again!!!',
author_id: u18.id, product_id: p65.id, rating: 4)



p66 = Product.create(name: 'Zelda Inspired Hyrule Crest Mahogany Hand-Tooled Leather Wallet', description: "The Hyrule Crest is tooled on the front, and the wallet is aged with a deep aged mahogany brown with a lighter sigil. \n
The black interior has two bill pockets, six upward facing card pockets, and two receipt pockets. Folded, this wallet measures approximately 4.5 by 3.5 inches (9cm x 11.5 cm).",
    price: 88.00, seller_id: u30.id )

    tag163 = Tag.create(category_id: cat9.id , product_id: p66.id)

file285 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet1.jpg')
file286 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet2.jpg')
file287 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldawallet3.jpg')

p66.photos.attach(io: file285, filename: 'zeldawallet1.jpg')
p66.photos.attach(io: file286, filename: 'zeldawallet2.jpg')
p66.photos.attach(io: file287, filename: 'zeldawallet3.jpg')

r206 = Review.create(body: 'I bought this wallet as a Christmas gift for my partner, and it arrived quickly and was well worth the money! He is really enjoying the wallet, too. I was also very happy with how it was packaged with so much care. Definitely 5/5 stars!',
author_id: u19.id, product_id: p66.id, rating: 5)

r207 = Review.create(body: 'This item arrived beautifully packaged and gorgeous to look at. My husband opened it on Christmas Eve and still really loves it.',
author_id: u17.id, product_id: p66.id, rating: 4)




p67 = Product.create(name: 'Welcome To Anti Social Animal Crossing New Horizon T Shirt', description: "Animal Crossing New Horizon Welcome to Anti-Social T Shirt \n
*About Us And Our T-Shirts*\n

We are a small business and love what we do and strive to see our customers smile with satisfaction. We create our designs and print them on super soft combed and ring-spun high quality 100% cotton t-shirt. Our shirts are preshrunk so after washing it might only shrink just a little bit. The best part is our t-shirt is unisex so one fits all. You can even share it with your family or friends! Better yet buy them one as well!",
    price: 20.00, seller_id: u29.id )


    tag164 = Tag.create(category_id: cat2.id , product_id: p67.id)
    tag165 = Tag.create(category_id: cat9.id , product_id: p67.id)


file288 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt1.jpg')
file289 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt2.jpg')
file290 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acshirt3.jpg')

p67.photos.attach(io: file288, filename: 'acshirt1.jpg')
p67.photos.attach(io: file289, filename: 'acshirt2.jpg')
p67.photos.attach(io: file290, filename: 'acshirt3.jpg')

r208 = Review.create(body: 'It arrived just as advertised and is such a soft shirt!',
author_id: u19.id, product_id: p67.id, rating: 5)

r209 = Review.create(body: 'Gotta a great shirt and got it quick can’t beat that',
author_id: u17.id, product_id: p67.id, rating: 4)




p68 = Product.create(name: 'Animal Crossing - town sign - wall mountable lamp', description: "Holy mackerel!\n

Welcome all visitors to your town with a beautiful wall hanging lamp built with a sturdy birch frame and two colors of vibrant and durable acrylic. The lamp measures about 12\" across the base. Bulb included is a 40w incandescent bulb, candelabra base. Cord has a rotary style switch and measures 6-feet in length. On the back of the lamp there is a keyhole style hanging opening to allow for quick and easy mounting with any small nail. Each lamp will be assembled and shipped within 2 to 3 business days. We make them all to order with buckets of love and care.",
    price: 64.00, seller_id: u28.id )

    tag166 = Tag.create(category_id: cat3.id , product_id: p68.id)
    tag167 = Tag.create(category_id: cat9.id , product_id: p68.id)

file291 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp1.jpg')
file292 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp2.jpg')
file293 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp3.jpg')
file294 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/aclamp4.jpg')

p68.photos.attach(io: file291, filename: 'aclamp1.jpg')
p68.photos.attach(io: file292, filename: 'aclamp2.jpg')
p68.photos.attach(io: file293, filename: 'aclamp3.jpg')
p68.photos.attach(io: file294, filename: 'aclamp4.jpg')

r210 = Review.create(body: 'AHHHHH, this was amazing!! First, this came is SO fast. Second, the quality is top notch. I have nothing to say but kudos. Wonderfully made, and it looks so cute. I can\'t wait to add this above my desk area. If you were thinking of getting this, know it was worth every penny.',
author_id: u16.id, product_id: p68.id, rating: 5)

r211 = Review.create(body: 'The first thing I noticed was how light it was, but also how well made this is, easiest thing to hang ever. Lights up the room the perfect amount to sit back comfortably and play animal crossing',
author_id: u15.id, product_id: p68.id, rating: 4)








p69 = Product.create(name: 'Animal Crossing Enamel Pins - KK Slider and Blathers Animal Crossing Pin', description: "Add some classic Animal Crossing flair to your collection.
Pick between KK Slider, Blathers, or grab both!\n

Each pin is about 1.25\" and has one clutch on the back. Select the locking pin back option for an even more secure hold for your pins. If you plan to wear these on a backpack, I would strongly recommend the locking backs.",
    price: 12.00, seller_id: u27.id )

    tag168 = Tag.create(category_id: cat6.id , product_id: p69.id)
    tag169 = Tag.create(category_id: cat9.id , product_id: p69.id)
    tag170 = Tag.create(category_id: cat15.id , product_id: p69.id)

file295 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin1.jpg')
file296 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin2.jpg')
file297 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/acpin3.jpg')

p69.photos.attach(io: file295, filename: 'acpin1.jpg')
p69.photos.attach(io: file296, filename: 'acpin2.jpg')
p69.photos.attach(io: file297, filename: 'acpin3.jpg')

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
    price: 50.00, seller_id: u26.id )

    tag171 = Tag.create(category_id: cat6.id , product_id: p70.id)
    tag172 = Tag.create(category_id: cat9.id , product_id: p70.id)
    tag173 = Tag.create(category_id: cat18.id , product_id: p70.id)

file298 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro1.jpg')
file299 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro2.jpg')
file300 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/poro3.jpg')

p70.photos.attach(io: file298, filename: 'poro1.jpg')
p70.photos.attach(io: file299, filename: 'poro2.jpg')
p70.photos.attach(io: file300, filename: 'poro3.jpg')

r215 = Review.create(body: 'Not much else to say. Obviously I would buy again. Great quality. Only if there was a Leona and a Graves, I think I would have the entire collection of all my mains over the years at that point XD Send help.',
author_id: u10.id, product_id: p70.id, rating: 5)

r216 = Review.create(body: 'honestly one of the CUTEST things i have bought in awhile! if you’re thinking about buying a poro from here, you won’t be disappointed (-:',
author_id: u9.id, product_id: p70.id, rating: 4)




p71 = Product.create(name: 'Gengar Pokemon Keycap || For Mechanical Cherry MX switches ||', description: "You have a mechanical keyboard with Cherry MX-style switches? You like Pokemon? You ALSO want to a ridiculous keycap to replace one of your perfectly functional keys? Look no further! These unique Gengar keycaps will be sure to brighten up your keyboard and make you smile. These keycaps are made in white plastic so that lighting from RGB keyboards can shine through. They are also easy to customize and paint to your liking if desired.",
    price: 9.89, seller_id: u25.id )

    tag174 = Tag.create(category_id: cat4.id , product_id: p71.id)     
    tag175 = Tag.create(category_id: cat9.id , product_id: p71.id)     
    tag176 = Tag.create(category_id: cat12.id , product_id: p71.id)     


file301 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gengarkey1.jpg')
file302 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gengarkey2.jpg')

p71.photos.attach(io: file301, filename: 'gengarkey1.jpg')
p71.photos.attach(io: file302, filename: 'gengarkey2.jpg')

r217 = Review.create(body: 'After taking time to use the keycap for a considerable about of time, it’s very well done for what it is. Thanks.',
author_id: u7.id, product_id: p71.id, rating: 5)

r218 = Review.create(body: '',
author_id: u6.id, product_id: p71.id, rating: 3)







p72 = Product.create(name: 'Crochet Chocobo from Final Fantasy Amigurumi/ Plushie Doll/ Bagcharm', description: "Detailed crocheted Chocobo from Final Fantasy, hope you enjoy!",
    price: 19.89, seller_id: u24.id )


    tag177 = Tag.create(category_id: cat6.id , product_id: p72.id)  
    tag178 = Tag.create(category_id: cat9.id , product_id: p72.id)  
    tag179 = Tag.create(category_id: cat17.id , product_id: p72.id)  



file303 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff11.jpg')
file304 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff12.jpg')

p72.photos.attach(io: file303, filename: 'ff11.jpg')
p72.photos.attach(io: file304, filename: 'ff12.jpg')

r219 = Review.create(body: 'This little guy is so adorable and I can\'t wait to get another one! ❤️',
author_id: u7.id, product_id: p72.id, rating: 5)





p73 = Product.create(name: 'Cute amigurumi Moogle Moguri from final fantasy - as keychain or mini plush', description: "♥ This made in ​​crochet (hook) with the amigurumi technique
\n♥ 100% Acrylic Wool, hand wash well with cold water.
\n♥ has felt, a small wire and synthetic filling
\n♥ Her measurements are: 7,5 cm high x 5 cm wide
\n♥ All ships within working day and certificated form with tracking number",
    price: 9.23, seller_id: u23.id )

    tag180 = Tag.create(category_id: cat6.id , product_id: p73.id)  
    tag181 = Tag.create(category_id: cat9.id , product_id: p73.id)  
    tag182 = Tag.create(category_id: cat17.id , product_id: p73.id)  


file305 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff1.jpg')
file306 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff2.jpg')
file307 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ff3.jpg')

p73.photos.attach(io: file305, filename: 'ff1.jpg')
p73.photos.attach(io: file306, filename: 'ff2.jpg')
p73.photos.attach(io: file307, filename: 'ff3.jpg')

r220 = Review.create(body: 'The moogle is absolutely adorable! Very nicely made and the size is perfect. The seller was very helpful and had great communication. I will be purchasing again in the future!',
author_id: u7.id, product_id: p73.id, rating: 5)

r221 = Review.create(body: 'So cute, just as pictured! The shop owner is so sweet and helpful too!',
author_id: u6.id, product_id: p73.id, rating: 5)

r222 = Review.create(body: 'Took a while to get in but it\'s super cute. Using it for a cosplay thing but it would definitely make a good decorative piece for something.',
author_id: u5.id, product_id: p73.id, rating: 4)





p74 = Product.create(name: 'Bride Cordelia Fire Emblem Heroes 11x17" Print', description: "Bride Cordelia Print!\n
Prints are shipped via a 2\" diameter tube. We know that some buyers prefer their prints shipped flat, but we are playing it safe since we know that thick card mailers can still get damaged and creased in the mail sometimes.",
    price: 22.23, seller_id: u22.id )

    tag183 = Tag.create(category_id: cat5.id , product_id: p74.id) 
    tag184 = Tag.create(category_id: cat9.id , product_id: p74.id) 
    tag185 = Tag.create(category_id: cat13.id , product_id: p74.id) 


file308 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cordelia1.jpg')

p74.photos.attach(io: file308, filename: 'cordelia1.jpg')

r223 = Review.create(body: 'Was a birthday present for a very good friend who was overjoyed! Thank you for the fast shipping!',
author_id: u6.id, product_id: p74.id, rating: 5)





p75 = Product.create(name: 'Cuphead Gaming Dictionary Art', description: "Cuphead rules. It may have made me pull some of my hair out and even made my hair a little grey but I love it. Cuphead is based around art from the 1930s and placing such vintage design on a dictionary page feels like a great fit to me. This is Cuphead and Mugman on a vintage dictionary page that has been upcycled to be a one of a kind piece of decoration or a great gift!",
    price: 6.99, seller_id: u21.id )

    tag186 = Tag.create(category_id: cat5.id , product_id: p75.id) 
    tag187 = Tag.create(category_id: cat9.id , product_id: p75.id) 
    tag188 = Tag.create(category_id: cat13.id , product_id: p75.id) 



file309 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cuphead1.jpg')

p75.photos.attach(io: file309, filename: 'cuphead1.jpg')

r224 = Review.create(body: 'Very cute and super creative!',
author_id: u5.id, product_id: p75.id, rating: 5)





# p76 = Product.create(name: 'Zelda inspired battle damaged shield', description: "Shield is made out of foam.
# Dimensions are about 23x21.
# Sits on right hand.\n

# Comes with shield and belt",
#     price: 180.00, seller_id: u20.id )

#     tag189 = Tag.create(category_id: cat9.id , product_id: p76.id)
#     tag190 = Tag.create(category_id: cat11.id , product_id: p76.id)

# file310 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield1.jpg')
# file311 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield2.jpg')

# p76.photos.attach(io: file310, filename: 'zeldashield1.jpg')
# p76.photos.attach(io: file311, filename: 'zeldashield2.jpg')

# r225 = Review.create(body: 'This was a present for my best friend. He said in 36 years he has never gotten anything as cool. His favorite gift Ever!',
# author_id: u4.id, product_id: p76.id, rating: 5)

# r226 = Review.create(body: 'Got this as a Christmas gift for my boyfriend who is a big Zelda fan. I have slowly been getting him different weapons from the games and as soon aa i saw the quality of this shield and all the great reviews, i knew I had to get it. He absolutely loced it! It\'s already mounted on the wall and looks amazing with the other weapons. Would high my recommend this seller, the work on the shield is amazing!',
# author_id: u3.id, product_id: p76.id, rating: 5)



p77 = Product.create(name: 'Destiny Ghost - 3D printed and LED Lit', description: "'In its dying breath, The Traveler created the Ghosts to seek out those who can wield its Light as a weapon - Guardians - to protect us and do what the Traveler itself no longer can.'
— The Speaker, Destiny, Restoration\n

A Ghost is a levitating artificial intelligence used by Guardians.\n

This item is 3D printed at 20% infill, very sturdy. Printed in black PLA plastic.",
    price: 27.00, seller_id: u19.id )



    tag191 = Tag.create(category_id: cat6.id , product_id: p77.id)
    tag192 = Tag.create(category_id: cat9.id , product_id: p77.id)
    tag193 = Tag.create(category_id: cat18.id , product_id: p77.id)

file312 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/destiny1.jpg')
file313 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/destiny2.jpg')

p77.photos.attach(io: file312, filename: 'destiny1.jpg')
p77.photos.attach(io: file313, filename: 'destiny2.jpg')

r227 = Review.create(body: 'Really good quality and fast shipping. Also many options for customization without extra cost.',
author_id: u2.id, product_id: p77.id, rating: 5)

r228 = Review.create(body: 'Beautifully made and arrived really quickly, especially as it travelled all the way across the globe! Would highly recommend.',
author_id: u1.id, product_id: p77.id, rating: 5)






p78 = Product.create(name: 'High Quality 925 Sterling Silver Kingdom Hearts Crown Pendant Sora Necklace Jewelry', description: "This is solid 925 Sterling Silver Kingdom Hearts Crown, Sora's Necklace. The pendant is polished and shiny,
It comes with 22 inches long silver plated chain.",
    price: 44.00, seller_id: u18.id )

    tag194 = Tag.create(category_id: cat1.id , product_id: p78.id)
    tag195 = Tag.create(category_id: cat9.id , product_id: p78.id)




file314 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh1.jpg')
file315 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh2.jpg')

p78.photos.attach(io: file314, filename: 'kh1.jpg')
p78.photos.attach(io: file315, filename: 'kh2.jpg')

r229 = Review.create(body: 'Absolutely beautiful! Bought this as a surprise for my boyfriend and he absolutely loves it! He wears it everyday! It hangs perfectly and is just the right size to wear it’s subtle and looks like it does on Sora. I did a lot of research to try to find a good quality version of this and this was the best I found, the quality and craftsmanship is worth the price! Thank you!',
author_id: u8.id, product_id: p78.id, rating: 5)

r230 = Review.create(body: 'Necklace is perfect! Came in faster than expected and it\'s just great craftsmanship!',
author_id: u50.id, product_id: p78.id, rating: 5)





p79 = Product.create(name: 'Kingdom Hearts large keyblade necklace with mini charm', description: "24\” necklace made of alloy, no nickel

Comes in an organza gift bag but many people have asked for them to be gift wrapped also so now we offer a gift wrap option. If you add gift wrap to your order, your item will come gift wrapped in wrapping paper",
    price: 20.00, seller_id: u17.id )


    tag196 = Tag.create(category_id: cat1.id , product_id: p79.id)
    tag197 = Tag.create(category_id: cat9.id , product_id: p79.id)


file316 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kh11.jpg')

p79.photos.attach(io: file316, filename: 'kh11.jpg')

r231 = Review.create(body: 'This necklace exceeded my expectations by a long shot! I can\'t believe how beautiful it is and it\'s the perfect size and weight. People that don\'t even know what Kingdom Hearts is are complimenting the necklace. Great purchase!',
author_id: u8.id, product_id: p79.id, rating: 5)

r232 = Review.create(body: 'Necklace is perfect! Came in faster than expected and it\'s just great craftsmanship!',
author_id: u49.id, product_id: p79.id, rating: 5)




p80 = Product.create(name: 'World of Warcraft Hearthstone Keychain (glow in the dark)', description: "This beautiful keychain could be the best gift! Give it to your friends so that they would come back to you more often ;)
\n
The keychain is made entirely by hand of polymer clay.
It comes with a gift box.
Also you can choose the color of the symbol.",
    price: 26.75, seller_id: u16.id )

    tag198 = Tag.create(category_id: cat6.id , product_id: p80.id)
    tag199 = Tag.create(category_id: cat9.id , product_id: p80.id)


file317 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone1.jpg')
file318 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone2.jpg')
file319 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone3.jpg')
file320 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/hearthstone4.jpg')

p80.photos.attach(io: file317, filename: 'hearthstone1.jpg')
p80.photos.attach(io: file318, filename: 'hearthstone2.jpg')
p80.photos.attach(io: file319, filename: 'hearthstone3.jpg')
p80.photos.attach(io: file320, filename: 'hearthstone4.jpg')

r233 = Review.create(body: 'Absolutely perfect! They were lightweight and just the right length. The glow takes a bit so I recommend putting under a good light for quite a bit before you go into a dark area.',
author_id: u48.id, product_id: p80.id, rating: 5)

r234 = Review.create(body: 'Thanks for the amazing piece of art! Very nice!',
author_id: u47.id, product_id: p80.id, rating: 4)




p81 = Product.create(name: 'Heart of Azeroth necklace | World of Warcraft', description: "Limited edition, only 5 products. The each product is equipped with a central insert.
\n Сores were made individually for each product using the lampwork technique, differ in their tracery.
\nMaterial: 925 silver, gilding, lampwork",
    price: 209.00, seller_id: u15.id )

    tag200 = Tag.create(category_id: cat1.id , product_id: p81.id)
    tag201 = Tag.create(category_id: cat9.id , product_id: p81.id)

file321 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow1.jpg')
file322 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow2.jpg')
file323 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow3.jpg')
file324 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wow4.jpg')

p81.photos.attach(io: file321, filename: 'wow1.jpg')
p81.photos.attach(io: file322, filename: 'wow2.jpg')
p81.photos.attach(io: file323, filename: 'wow3.jpg')
p81.photos.attach(io: file324, filename: 'wow4.jpg')

r235 = Review.create(body: "The pendant is perfect! The craftsmanship and attention to detail is amazing.\n
    Shipping was very fast and everything was packaged very well. Definitely will purchase from again. Thank you!",
author_id: u46.id, product_id: p81.id, rating: 5)

r236 = Review.create(body: 'Beautiful piece! And, for shipping from the middle of Russia, it arrived in no time! Can’t wait to release N’Zoth with this bad boy.',
author_id: u45.id, product_id: p81.id, rating: 4)

r237 = Review.create(body: 'Simply beautiful!!! This is the 2nd item from this vendor that I\'ve purchased and I have never been disappointed. Great attention to deal!!!',
author_id: u44.id, product_id: p81.id, rating: 5)







p82 = Product.create(name: 'Hunter\'s mask -Odogaron -Monster Hunter inspired', description: "Become the Apex Predator with this stylish resin mask, fashioned in the image of one of the most ravenous Monsters that prowls the New World.
\n
This resin kit includes a mask, as well as the four large fangs (already mounted).",
    price: 147.49, seller_id: u14.id )

    tag202 = Tag.create(category_id: cat6.id , product_id: p82.id)
    tag203 = Tag.create(category_id: cat9.id , product_id: p82.id)
    tag204 = Tag.create(category_id: cat11.id , product_id: p82.id)

file325 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/monsterhunter1.jpg')
file326 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/monsterhunter2.jpg')
file327 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/monsterhunter3.jpg')
file328 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/monsterhunter4.jpg')

p82.photos.attach(io: file325, filename: 'monsterhunter1.jpg')
p82.photos.attach(io: file326, filename: 'monsterhunter2.jpg')
p82.photos.attach(io: file327, filename: 'monsterhunter3.jpg')
p82.photos.attach(io: file328, filename: 'monsterhunter4.jpg')

r238 = Review.create(body: "I received a wonderful blue mask.
it is amazing! !
Thank you very much.",
author_id: u43.id, product_id: p82.id, rating: 5)

r239 = Review.create(body: 'Awesome work, shipped in time and especially great seller who is very friendly and helpful, he answered all of my questions thoroughly and in a timely manner ! Thank you !',
author_id: u42.id, product_id: p82.id, rating: 4)

r240 = Review.create(body: 'Awesome kit. Second order and I\'m always happy with what I get.',
author_id: u41.id, product_id: p82.id, rating: 5)






p83 = Product.create(name: 'Persona 5 Headphone Hanger - Joker phantom thieves logo holder wall mount for headphones', description: "Store your headphones in a safe place while you're out exploring the Metaverse!

Reduce desk clutter with this Phantom Thieves-inspired headphone hook/hanger! Perfect for holding your headphones, wires, hats, or accessories while adding some gamer chic to your decor. This headphone stand makes an ideal gift for audiophiles, gamers, and Persona fans.",
    price: 18.62, seller_id: u13.id )


    tag205 = Tag.create(category_id: cat4.id , product_id: p83.id)
    tag206 = Tag.create(category_id: cat9.id , product_id: p83.id)

file329 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/personaheadphone1.jpg')
file330 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/personaheadphone2.jpg')
file331 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/personaheadphone3.jpg')
file332 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/personaheadphone4.jpg')

p83.photos.attach(io: file329, filename: 'personaheadphone1.jpg')
p83.photos.attach(io: file330, filename: 'personaheadphone2.jpg')
p83.photos.attach(io: file331, filename: 'personaheadphone3.jpg')
p83.photos.attach(io: file332, filename: 'personaheadphone4.jpg')

r241 = Review.create(body: "Very impressed with the quality. It is beautiful and any persona fan would love it. In addition, it was sent with nails, a wall mount, and mounting tape. I was not concerned with the method of getting this mounted, but this made things even easier for me. Definitely recommend.
",
author_id: u43.id, product_id: p83.id, rating: 5)

r242 = Review.create(body: 'Arrived safely, and I AM IN LOVE WITH IT! Probably the coolest thing I own right now!',
author_id: u42.id, product_id: p83.id, rating: 4)

r243 = Review.create(body: 'Looks just like the picture. Excellent prop. Would highly recommend this shop!',
author_id: u41.id, product_id: p83.id, rating: 5)







p84 = Product.create(name: 'PlayStation Controller Lapel Pin - PS2 Controller Enamel Pin - PS3 Controller Hard Enamel Lapel Pin', description: "1.25 inch hard enamel gold plated lapel pin. Secured by two pin posts with butterfly clasps and packaged on a backing card.",
    price: 15.00, seller_id: u12.id )

    tag207 = Tag.create(category_id: cat5.id , product_id: p84.id)
    tag208 = Tag.create(category_id: cat9.id , product_id: p84.id)
    tag209 = Tag.create(category_id: cat15.id , product_id: p84.id)

file333 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/playstation1.jpg')
file334 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/playstation2.jpg')
file335 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/playstation3.jpg')
file336 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/playstation4.jpg')

p84.photos.attach(io: file333, filename: 'playstation1.jpg')
p84.photos.attach(io: file334, filename: 'playstation2.jpg')
p84.photos.attach(io: file335, filename: 'playstation3.jpg')
p84.photos.attach(io: file336, filename: 'playstation4.jpg')

r244 = Review.create(body: "It's perfect! Such a cute little controller!",
author_id: u40.id, product_id: p84.id, rating: 5)

r245 = Review.create(body: 'Arrived safely, and I AM IN LOVE WITH IT! Probably the coolest thing I own right now!',
author_id: u39.id, product_id: p84.id, rating: 4)

r246 = Review.create(body: '',
author_id: u38.id, product_id: p84.id, rating: 5)



p85 = Product.create(name: 'Grand Theft Auto Wasted Embroidered Dad hat', description: "Dad hats aren't just for dads. This one's got a low profile with an adjustable strap and curved visor.",
    price: 23.50, seller_id: u11.id )

    tag210 = Tag.create(category_id: cat2.id , product_id: p85.id)
    tag211 = Tag.create(category_id: cat9.id , product_id: p85.id)

file337 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gtahat1.jpg')
file338 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/gtahat2.jpg')


p85.photos.attach(io: file337, filename: 'gtahat1.jpg')
p85.photos.attach(io: file338, filename: 'gtahat2.jpg')


r247 = Review.create(body: "The seller was such a pleasure to work with! Fast communication, arrived very quickly, great quality product as well. My son loves his new hat. If you’re looking for a win win this is the shop for you 😊",
author_id: u40.id, product_id: p85.id, rating: 5)

r248 = Review.create(body: '',
author_id: u37.id, product_id: p85.id, rating: 4)

r249 = Review.create(body: '',
author_id: u36.id, product_id: p85.id, rating: 4)




p86 = Product.create(name: 'Maplestory Slime and Mushroom Enamel Pin
', description: "Slime Pin:\n
Item Specifications:\n
- Approximately 4.5cm x 4.5cm\n
- Gold plated finish\n
- Comes with 2x regular pin fasteners
\n
Mushroom Pin\n
Item Specifications:\n
- Approximately 4.5cm x 4cm\n
- Gold plated finish\n
- Comes with 2x regular pin fasteners",
    price: 10.96, seller_id: u10.id )

    tag212 = Tag.create(category_id: cat5.id , product_id: p86.id)
    tag213 = Tag.create(category_id: cat9.id , product_id: p86.id)
    tag214 = Tag.create(category_id: cat15.id , product_id: p86.id)

file339 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maplestory1.jpg')
file340 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maplestory2.jpg')


p86.photos.attach(io: file339, filename: 'maplestory1.jpg')
p86.photos.attach(io: file340, filename: 'maplestory2.jpg')


r250 = Review.create(body: "Cute! I love it so much!",
author_id: u36.id, product_id: p86.id, rating: 5)

r251 = Review.create(body: '',
author_id: u35.id, product_id: p86.id, rating: 4)

r252 = Review.create(body: '',
author_id: u32.id, product_id: p86.id, rating: 4)







p87 = Product.create(name: 'NieR: Automata Print', description: "2B print is approximately 8.5\"x13\" on cardstock.
9S print is approximately 8\"x13\" on cardstock.
A2 print is approximately 8.5\"x13\" on cardstock.",
    price: 7.50, seller_id: u10.id )


    tag215 = Tag.create(category_id: cat5.id , product_id: p87.id)
    tag216 = Tag.create(category_id: cat9.id , product_id: p87.id)
    tag217 = Tag.create(category_id: cat13.id , product_id: p87.id)



file341 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nier1.jpg')
file342 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nier2.jpg')
file343 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nier3.jpg')
file344 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nier4.jpg')


p87.photos.attach(io: file341, filename: 'nier1.jpg')
p87.photos.attach(io: file342, filename: 'nier2.jpg')
p87.photos.attach(io: file343, filename: 'nier3.jpg')
p87.photos.attach(io: file344, filename: 'nier4.jpg')


r253 = Review.create(body: "The prints are beautiful and the paper is top notch. Love them!!!",
author_id: u35.id, product_id: p87.id, rating: 5)

r254 = Review.create(body: '',
author_id: u34.id, product_id: p87.id, rating: 4)

r255 = Review.create(body: 'The art is really nice!',
author_id: u33.id, product_id: p87.id, rating: 4)

r256 = Review.create(body: 'Love it, looks amazing!!! Best art print of 2B i can find!',
author_id: u32.id, product_id: p87.id, rating: 4)





p88 = Product.create(name: 'Cardcaptor Sakura Rug', description: "Pink Cardcaptor Sakura Rug, perfect for bedroom or game room!",
    price: 18.00, seller_id: u9.id )

    tag218 = Tag.create(category_id: cat3.id , product_id: p88.id)
    tag219 = Tag.create(category_id: cat9.id , product_id: p88.id)

file345 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cardcaptor1.jpg')
file346 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cardcaptor2.jpg')
file347 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cardcaptor3.jpg')


p88.photos.attach(io: file345, filename: 'cardcaptor1.jpg')
p88.photos.attach(io: file346, filename: 'cardcaptor2.jpg')
p88.photos.attach(io: file347, filename: 'cardcaptor3.jpg')


r257 = Review.create(body: "",
author_id: u31.id, product_id: p88.id, rating: 5)

r258 = Review.create(body: 'a bit bigger than expected, but still perfect for my desk! makes it so much easier to stay tidy ^w^ easy to clean, too! highly recommend.',
author_id: u30.id, product_id: p88.id, rating: 4)






p89 = Product.create(name: 'thank u next sticker set
', description: "thank u next sticker set",
    price: 10.78, seller_id: u8.id )

    tag220 = Tag.create(category_id: cat10.id , product_id: p89.id)
    tag221 = Tag.create(category_id: cat16.id , product_id: p89.id)

file348 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thankunext1.jpg')
file349 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thankunext2.jpg')
file350 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thankunext3.jpg')
file351 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thankunext4.jpg')


p89.photos.attach(io: file348, filename: 'thankunext1.jpg')
p89.photos.attach(io: file349, filename: 'thankunext2.jpg')
p89.photos.attach(io: file350, filename: 'thankunext3.jpg')
p89.photos.attach(io: file351, filename: 'thankunext4.jpg')


r259 = Review.create(body: "",
author_id: u29.id, product_id: p89.id, rating: 4)

r260 = Review.create(body: '',
author_id: u28.id, product_id: p89.id, rating: 4)

r261 = Review.create(body: '',
author_id: u27.id, product_id: p89.id, rating: 4)









p90 = Product.create(name: 'Demon Elmo - Original Meme Art', description: "Want a flaming Elmo, ready to sacrifice to the gods with you? This is the perfect piece of art for you.
Fully coloured in copic marker and labelled on the back with the name of the piece, this sure is to give you a good laugh.
Based off of the original meme itself, this goofy picture is worth it in every way.",
    price: 11.76, seller_id: u7.id )

     tag222 = Tag.create(category_id: cat10.id , product_id: p90.id)
     tag223 = Tag.create(category_id: cat16.id , product_id: p90.id)

file352 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/elmo1.jpg')

p90.photos.attach(io: file352, filename: 'elmo1.jpg')

r262 = Review.create(body: "",
author_id: u29.id, product_id: p90.id, rating: 4)




p91 = Product.create(name: 'Spongebob Squidward meme painting (hand painted)', description: "This will be made just for you! Prep time varies. Contact the shop to find out when it will ship.",
    price: 25.00, seller_id: u6.id )


    tag224 = Tag.create(category_id: cat5.id , product_id: p91.id)
    tag225 = Tag.create(category_id: cat10.id , product_id: p91.id)
    tag226 = Tag.create(category_id: cat13.id , product_id: p91.id)

file353 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/squidward1.jpg')
file354 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/squidward2.jpg')

p91.photos.attach(io: file353, filename: 'squidward1.jpg')
p91.photos.attach(io: file354, filename: 'squidward2.jpg')

r263 = Review.create(body: "",
author_id: u28.id, product_id: p91.id, rating: 4)




p92 = Product.create(name: 'Peace Was Never An Option Goose Meme - Meme Art - Funny - Embroidery Art', description: "Honk! This goose will look great in any home, it is definitely a conversation piece.
These embroidery hoops are perfect for a contemporary piece of decor or as a gift. To display your hoop, either hang it or lean in it!",
    price: 13.50, seller_id: u5.id )

    tag227 = Tag.create(category_id: cat3.id , product_id: p92.id)
    tag228 = Tag.create(category_id: cat5.id , product_id: p92.id)
    tag229 = Tag.create(category_id: cat10.id , product_id: p92.id)

file355 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peaceduck1.jpg')
file356 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peaceduck2.jpg')
file357 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/peaceduck3.jpg')

p92.photos.attach(io: file355, filename: 'peaceduck1.jpg')
p92.photos.attach(io: file356, filename: 'peaceduck2.jpg')
p92.photos.attach(io: file357, filename: 'peaceduck3.jpg')

r264 = Review.create(body: "Hilarious. My friend loved it",
author_id: u26.id, product_id: p92.id, rating: 4)





p93 = Product.create(name: 'SpongeBob Ight Imma Head Out Meme Embroidered Beanie', description: "It's 2pm on a Saturday and you're attending your in-law's birthday party for their one thousand year old dog. Also, they don't drink alcohol and the veggie plate has already ran out of ranch dipping sauce. Put this beanie on your head to signal to your wife that it's time to get out of dodge.
\n
SpongeBob Ight Imma Head Out Meme Embroidered Beanie. The beanie is 12\" long when uncuffed. This is considered an adult size 'long' style beanie.",
    price: 19.99, seller_id: u4.id )


    tag230 = Tag.create(category_id: cat2.id , product_id: p93.id)
    tag231 = Tag.create(category_id: cat5.id , product_id: p93.id)
    tag232 = Tag.create(category_id: cat10.id , product_id: p93.id)


file358 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/spongebob1.jpg')
file359 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/spongebob2.jpg')

p93.photos.attach(io: file358, filename: 'spongebob1.jpg')
p93.photos.attach(io: file359, filename: 'spongebob2.jpg')

r265 = Review.create(body: "The hat is just as gorgeous & hilarious as it is in the picture I got sooo many compliments for it!",
author_id: u24.id, product_id: p93.id, rating: 4)


r266 = Review.create(body: "My girlfriend loved it, very punny! stitch work is exactly like the picture.",
author_id: u23.id, product_id: p93.id, rating: 5)





p94 = Product.create(name: 'Doge meme poster Astronaut Dog internet modern pop art design', description: "Humans on Mars… not yet, but this brave Astronaut Doge has been there already! seems like he had a fun time.\n
Exclusive & creative designs with an excellent quality. \n
Made with love and inspired by the Internet culture.",
    price: 12.99, seller_id: u3.id )

    tag233 = Tag.create(category_id: cat5.id , product_id: p94.id)
    tag234 = Tag.create(category_id: cat10.id , product_id: p94.id)
    tag235 = Tag.create(category_id: cat13.id , product_id: p94.id)

file360 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dogeastronaut1.jpg')
file361 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dogeastronaut2.jpg')
file362 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dogeastronaut3.jpg')
file363 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dogeastronaut4.jpg')

p94.photos.attach(io: file360, filename: 'dogeastronaut1.jpg')
p94.photos.attach(io: file361, filename: 'dogeastronaut2.jpg')
p94.photos.attach(io: file362, filename: 'dogeastronaut3.jpg')
p94.photos.attach(io: file363, filename: 'dogeastronaut4.jpg')

r267 = Review.create(body: "I bought this for my son for Christmas and he loved it! Great quality, great size options.. super rad, thanks so much :)",
author_id: u22.id, product_id: p94.id, rating: 4)

r268 = Review.create(body: "",
author_id: u21.id, product_id: p94.id, rating: 5)





p95 = Product.create(name: 'MEME "YOU TRIED" Enamel Pin. Funny Joke Gift Gold Star Merit Badge Lapel Pin.', description: "Now you can proclaim the merits of effort, if not accomplishment, on your very person. Or just memes. Proclaim memery.",
    price: 12.00, seller_id: u2.id )


    tag236 = Tag.create(category_id: cat6.id , product_id: p95.id)
    tag237 = Tag.create(category_id: cat10.id , product_id: p95.id)

file364 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/youtried1.jpg')
file365 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/youtried2.jpg')


p95.photos.attach(io: file364, filename: 'youtried1.jpg')
p95.photos.attach(io: file365, filename: 'youtried2.jpg')


r269 = Review.create(body: "Such great quality. Love it",
author_id: u19.id, product_id: p95.id, rating: 4)

r270 = Review.create(body: "Very nice! Fast shipping! My daughter will love it!",
author_id: u21.id, product_id: p95.id, rating: 5)





p96 = Product.create(name: 'Owen Wilson "WOW" Meme Mouse Pad, Neoprene Mousepad', description: 'Owen Wilson "WOW" Meme Mouse Pad, Neoprene Mousepad',
    price: 9.99, seller_id: u50.id )


    tag238 = Tag.create(category_id: cat4.id , product_id: p96.id)
    tag239 = Tag.create(category_id: cat10.id , product_id: p96.id)

file366 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/owenwilson1.jpg')

p96.photos.attach(io: file366, filename: 'owenwilson1.jpg')

r71 = Review.create(body: "Good quality item. Item shipped quickly in time for Christmas.",
author_id: u18.id, product_id: p96.id, rating: 4)

r272 = Review.create(body: "Received in just a few days! Incredibly happy with it. It's gotten a few laughs around the office.",
author_id: u17.id, product_id: p96.id, rating: 5)





p97 = Product.create(name: 'Per My Last Email Funny Work Meme T-Shirt', description: "SEE OUR OTHER SHIRTS - 'LET'S CIRCLE BACK NEXT WEEK'",
    price: 19.99, seller_id: u49.id )

    tag240 = Tag.create(category_id: cat2.id , product_id: p97.id)
    tag241 = Tag.create(category_id: cat10.id , product_id: p97.id)

file367 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/email1.jpg')
file368 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/email2.jpg')

p97.photos.attach(io: file367, filename: 'email1.jpg')
p97.photos.attach(io: file368, filename: 'email2.jpg')




p98 = Product.create(name: 'BTS Jungkook "Jungshook" Meme T-Shirt', description: "These premium cotton shirts offer a soft feel, easy stretch, and a comfortable classic t-shirt fit. Our tees are a well-loved favorite that fits great on both women and men alike. ",
    price: 22.95, seller_id: u49.id )

    tag242 = Tag.create(category_id: cat2.id , product_id: p98.id)
    tag243 = Tag.create(category_id: cat10.id , product_id: p98.id)

file369 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bts1.jpg')
file370 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bts2.jpg')

p98.photos.attach(io: file369, filename: 'bts1.jpg')
p98.photos.attach(io: file370, filename: 'bts2.jpg')


r273 = Review.create(body: "Love my shirt. Can't wait to wear it!",
author_id: u16.id, product_id: p98.id, rating: 5)



p99 = Product.create(name: ' Knuckles | Warrior Meme Plush Toy | Handmade Toy Soft | Stuffed Toy | Made To Order', description: "Little red warrior from meme part of Uganda who totally knows de wey :)
This is our own carefully designed pattern and a top notch handmade work overall.",
    price: 140.00, seller_id: u48.id )

    tag244 = Tag.create(category_id: cat17.id , product_id: p99.id)
    tag245 = Tag.create(category_id: cat10.id , product_id: p99.id)

file371 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/knuckles1.jpg')
file372 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/knuckles2.jpg')
file373 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/knuckles3.jpg')

p99.photos.attach(io: file371, filename: 'knuckles1.jpg')
p99.photos.attach(io: file372, filename: 'knuckles2.jpg')
p99.photos.attach(io: file373, filename: 'knuckles3.jpg')


r274 = Review.create(body: "A plush well designed, neat and very faithful to the original character. I am very grateful. Thank you very much !!! ^_^",
author_id: u13.id, product_id: p99.id, rating: 5)




p100 = Product.create(name: 'Cardi B Birthday Card | Meme Birthday Card | Happy Birthday Okurrr', description: "A Cardi B Birthday card 'Happy Birthday Okurrr'",
    price: 3.54, seller_id: u47.id )


    tag246 = Tag.create(category_id: cat10.id , product_id: p100.id)

file374 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/cardib1.jpg')

p100.photos.attach(io: file374, filename: 'cardib1.jpg')

r275 = Review.create(body: "very cute card for my die hard cardi friends birthday",
author_id: u13.id, product_id: p100.id, rating: 4)






p101 = Product.create(name: 'Unacceptable!! - Lemongrab Adventure Time Painting', description: "UNACCEPTABLE!!!!",
    price: 75.00, seller_id: u44.id )

    tag247 = Tag.create(category_id: cat5.id , product_id: p101.id)
    tag248 = Tag.create(category_id: cat8.id , product_id: p101.id)
    tag249 = Tag.create(category_id: cat10.id , product_id: p101.id)

file375 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lemongrab1.jpg')
file376 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lemongrab2.jpg')

p101.photos.attach(io: file375, filename: 'lemongrab1.jpg')
p101.photos.attach(io: file376, filename: 'lemongrab2.jpg')





p102 = Product.create(name: 'Bold and Brash - Squidward Painting', description: "Bold and Brash (more like belongs in the trash) from spongebob! Every painting comes out slightly different and is made to order so please specify if you have a preference, such as more white, smoother, etc. I have more sizes available upon request.",
    price: 23.00, seller_id: u42.id )

    tag250 = Tag.create(category_id: cat5.id , product_id: p102.id)
    tag251 = Tag.create(category_id: cat8.id , product_id: p102.id)
    tag252 = Tag.create(category_id: cat10.id , product_id: p102.id)

file376 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/boldandbrash1.jpg')

p102.photos.attach(io: file376, filename: 'boldandbrash1.jpg')

r276 = Review.create(body: "Absolutely hilarious and beautiful! I love this painting and can't wait to hang it!",
author_id: u11.id, product_id: p102.id, rating: 5)






p103 = Product.create(name: 'Edelgard Cosplay Pattern - Edelgard Fire Emblem Three Houses - Edelgard costume - FE3H Cosplay - Fire Emblem Cosplay - Fire Emblem Pattern', description: "Edelgard Sewing Pattern - Fire Emblem Three Houses
\n ♡♡♡
\n This sewing pattern is based on Edelgard's Student Uniform from Fire Emblem Three Houses and my own personal build of the costume.",
    price: 137.50, seller_id: u41.id )


    tag253 = Tag.create(category_id: cat9.id , product_id: p103.id)
    tag254 = Tag.create(category_id: cat11.id , product_id: p103.id)



file377 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fecos1.jpg')
file378 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fecos2.jpg')
file379 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fecos3.jpg')

p103.photos.attach(io: file377, filename: 'fecos1.jpg')
p103.photos.attach(io: file378, filename: 'fecos2.jpg')
p103.photos.attach(io: file379, filename: 'fecos3.jpg')

r277 = Review.create(body: "Beautiful costume, so easy to work with. Thank you so much!",
author_id: u12.id, product_id: p103.id, rating: 5)

r278 = Review.create(body: "It\’s perfect and detailed, just an amazing costume and the care into making sure anyone could make it is unbelievable",
author_id: u13.id, product_id: p103.id, rating: 5)




p104 = Product.create(name: 'Screen Printed & Leather Deadpool Movie (Replica) Cosplay / Costume Suit', description: "Custom Screen Deadpool Printed Stretch Material & Leather Suit. With ilustrastudios shoulders included.",
    price: 1200.00, seller_id: u40.id )

    tag255 = Tag.create(category_id: cat11.id , product_id: p104.id)

file340 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/deadpool1.jpg')
file341 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/deadpool2.jpg')
file342 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/deadpool3.jpg')

p104.photos.attach(io: file340, filename: 'deadpool1.jpg')
p104.photos.attach(io: file341, filename: 'deadpool2.jpg')
p104.photos.attach(io: file342, filename: 'deadpool3.jpg')

r279 = Review.create(body: "Great suit! Worth the money! Highly recommend!",
author_id: u14.id, product_id: p104.id, rating: 5)

r280 = Review.create(body: "This is the perfect deadpool suit! \n
It\'s like a movie suit. \n
I am very happy , Thank you!",
author_id: u15.id, product_id: p104.id, rating: 5)






p105 = Product.create(name: 'Stormtrooper Armor Personalized Star Wars Cosplay Costume', description: "Custom made Star Wars Stormtrooper costume armor",
    price: 900.00, seller_id: u39.id )

    tag256 = Tag.create(category_id: cat11.id , product_id: p105.id)

file343 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/starwars1.jpg')
file344 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/starwars2.jpg')
file345 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/starwars3.jpg')

p105.photos.attach(io: file343, filename: 'starwars1.jpg')
p105.photos.attach(io: file344, filename: 'starwars2.jpg')
p105.photos.attach(io: file345, filename: 'starwars3.jpg')

r281 = Review.create(body: "great detail and great customization worth getting",
author_id: u16.id, product_id: p105.id, rating: 5)

r282 = Review.create(body: "Absolutely amazing communication!\n
    Fast shipping!\n
    Two thumbs up!\n
    I will definitely do business again!👍",
author_id: u17.id, product_id: p105.id, rating: 4)





p106 = Product.create(name: 'Akali KDA/POPSTAR League of legends uv/ glow in the dark MASK', description: "Hip fashion accessory, as popularized by the hit music icon Akali from K/DA POP/STARS",
    price: 26.00, seller_id: u38.id )

    tag257 = Tag.create(category_id: cat9.id , product_id: p106.id)
    tag258 = Tag.create(category_id: cat11.id , product_id: p106.id)

file346 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kda1.jpg')
file347 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kda2.jpg')
file348 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kda3.jpg')

p106.photos.attach(io: file346, filename: 'kda1.jpg')
p106.photos.attach(io: file347, filename: 'kda2.jpg')
p106.photos.attach(io: file348, filename: 'kda3.jpg')

r283 = Review.create(body: "Good quality item very soft and flexible.",
author_id: u18.id, product_id: p106.id, rating: 4)

r284 = Review.create(body: "Packed extremely well, shipped quickly, as pictured, good material and graphic quality.",
author_id: u19.id, product_id: p106.id, rating: 5)

r285 = Review.create(body: "I love it!!! Just how I wanted it! And the quality is great!! Also thought the little baggie where it came from was super cute 😂❤️",
author_id: u20.id, product_id: p106.id, rating: 5)





p107 = Product.create(name: 'League of Legends: Jhin mask Inspired for cosplay', description: "Cosplay from League of Legend games • The mask is made of strong polyurethane plastic, further Reinforced throughout the area.",
    price: 94.00, seller_id: u37.id )

     tag259 = Tag.create(category_id: cat9.id , product_id: p107.id)
    tag260 = Tag.create(category_id: cat11.id , product_id: p107.id)
    

file349 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jhin1.jpg')
file350 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jhin2.jpg')
file351 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/jhin3.jpg')

p107.photos.attach(io: file349, filename: 'jhin1.jpg')
p107.photos.attach(io: file350, filename: 'jhin2.jpg')
p107.photos.attach(io: file351, filename: 'jhin3.jpg')

r286 = Review.create(body: "Amazing quality! I love it !!",
author_id: u21.id, product_id: p107.id, rating: 4)

r287 = Review.create(body: "While it took a month to ship, the quality is amazing and very accurate. The size of it is very nice as well, not too small or anything. Very pleased and definitely worth the price for how nice it is.",
author_id: u22.id, product_id: p107.id, rating: 5)

r288 = Review.create(body: "The item was great quality and shipped quickly. The store was friendly and helpful. Overall great!",
author_id: u23.id, product_id: p107.id, rating: 5)




p108 = Product.create(name: 'Fallout Nuka Cola Thirst Zapper Blaster Prop', description: "Fallout 4 Quantum Nuka Cola Blaster Replica",
    price: 114.17, seller_id: u36.id )

    tag261 = Tag.create(category_id: cat9.id , product_id: p108.id)
    tag262 = Tag.create(category_id: cat11.id , product_id: p108.id)



file352 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nukacola1.jpg')
file353 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nukacola2.jpg')
file354 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/nukacola3.jpg')

p108.photos.attach(io: file352, filename: 'nukacola1.jpg')
p108.photos.attach(io: file353, filename: 'nukacola2.jpg')
p108.photos.attach(io: file354, filename: 'nukacola3.jpg')

r289 = Review.create(body: "great item, arrived well packed, good comms .. would recommend",
author_id: u24.id, product_id: p108.id, rating: 4)

r290 = Review.create(body: "Awesome piece of work! Very accurate!",
author_id: u25.id, product_id: p108.id, rating: 5)

r291 = Review.create(body: "I love the finish! Just like in the game!!",
author_id: u26.id, product_id: p108.id, rating: 5)




p109 = Product.create(name: 'Zelda inspired battle damaged shield', description: "Shield is made out of foam.
Dimensions are about 23x21.
Sits on right hand. \n\n

Comes with shield and belt",
    price: 232.47, seller_id: u35.id )


    tag263 = Tag.create(category_id: cat9.id , product_id: p109.id)
    tag264 = Tag.create(category_id: cat11.id , product_id: p109.id)

file355 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield1.jpg')
file356 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/zeldashield2.jpg')

p109.photos.attach(io: file355, filename: 'zeldashield1.jpg')
p109.photos.attach(io: file356, filename: 'zeldashield2.jpg')

r292 = Review.create(body: "Seller was a blast to communicate with. She loves what she does and it shows in her craftwomanship! She produced the shield exactly in the time frame she stated.",
author_id: u27.id, product_id: p109.id, rating: 4)

r293 = Review.create(body: "This was a present for my best friend. He said in 36 years he has never gotten anything as cool. His favorite gift Ever!",
author_id: u28.id, product_id: p109.id, rating: 5)

r294 = Review.create(body: "Got this as a Christmas gift for my boyfriend who is a big Zelda fan. I have slowly been getting him different weapons from the games and as soon aa i saw the quality of this shield and all the great reviews, i knew I had to get it. He absolutely loced it! It's already mounted on the wall and looks amazing with the other weapons. Would high my recommend this seller, the work on the shield is amazing!",
author_id: u29.id, product_id: p109.id, rating: 5)





p110 = Product.create(name: 'Floating fireball prop 2.0 (cosplay, convention, halloween)', description: "Floating fireball prop 2.0 (cosplay, convention, halloween)",
    price: 74.99, seller_id: u34.id )

    tag265 = Tag.create(category_id: cat11.id , product_id: p110.id)

file357 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fireball1.jpg')
file358 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fireball2.jpg')
file359 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fireball3.jpg')
file360 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fireball4.jpg')

p110.photos.attach(io: file357, filename: 'fireball1.jpg')
p110.photos.attach(io: file358, filename: 'fireball2.jpg')
p110.photos.attach(io: file359, filename: 'fireball3.jpg')
p110.photos.attach(io: file360, filename: 'fireball4.jpg')

r295 = Review.create(body: "Fantastic product! Will definitely shop with again! I can finally cosplay the avatar yaaaa",
author_id: u30.id, product_id: p110.id, rating: 4)

r296 = Review.create(body: "Order arrived in perfect conditions, the quality is amazing. Definitely worth it",
author_id: u31.id, product_id: p110.id, rating: 5)






p111 = Product.create(name: 'Made to Order, Custom Fit Azula Cosplay- Avatar the Last Airbender', description: "You are able to order the breastplate, the red jumpsuit, the greaves/ shoe covers, the tiara/ belt or the entire costume. Please let me know if you would like either gold details or yellow details when messaging me. (See listing photos for gold or yellow options)",
    price: 65.00, seller_id: u33.id )

        tag266 = Tag.create(category_id: cat8.id , product_id: p111.id)
        tag267 = Tag.create(category_id: cat11.id , product_id: p111.id)


file361 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/azula1.jpg')
file362 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/azula2.jpg')
file363 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/azula3.jpg')

p111.photos.attach(io: file361, filename: 'azula1.jpg')
p111.photos.attach(io: file362, filename: 'azula2.jpg')
p111.photos.attach(io: file363, filename: 'azula3.jpg')

r297 = Review.create(body: "I love this costume. I was highly impressed by the quality of the material and the detail put into items like the staff and the belts. If you are looking for a costume that is up to Fire Nation standards this is the one",
author_id: u32.id, product_id: p111.id, rating: 5)

r298 = Review.create(body: "The quality is amazing, it’s very comfortable, everything is a perfect fit... I can’t recommend this shop enough. Absolutely love it.",
author_id: u33.id, product_id: p111.id, rating: 5)








p112 = Product.create(name: 'Katara Cosplay', description: "Become a water bender with your very own Katara Cosplay!\n

What’s included?\n
- Fleece dress with fur trim on the bottom\n
- White tie belt\n
- Water Tribe Necklace with jump ring attached (ribbon not included)",
    price: 72.99, seller_id: u32.id )


    tag268 = Tag.create(category_id: cat8.id , product_id: p112.id)
    tag269 = Tag.create(category_id: cat11.id , product_id: p112.id)


file364 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katara1.jpg')
file365 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katara2.jpg')
file366 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katara3.jpg')

p112.photos.attach(io: file364, filename: 'katara1.jpg')
p112.photos.attach(io: file365, filename: 'katara2.jpg')
p112.photos.attach(io: file366, filename: 'katara3.jpg')

r299 = Review.create(body: "A great looking outfit! Very well made and fits perfect. My wife loves it and can’t wait to wear it to the next con!",
author_id: u34.id, product_id: p112.id, rating: 4)

r300 = Review.create(body: "Excellent delivery time and excellent quality outfit for my teenage daughter .",
author_id: u35.id, product_id: p112.id, rating: 4)





p113 = Product.create(name: 'Fire Emblem Awakening Avatar Mai Robin Cosplay Costume Full Set Custom Made', description: "Includes: Accessories, Belt, Coat, Pants, Shirt, Skirt, Vest",
    price: 192.50, seller_id: u31.id )

    tag270 = Tag.create(category_id: cat9.id , product_id: p113.id)
    tag271 = Tag.create(category_id: cat11.id , product_id: p113.id)

file367 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/feacos1.jpg')
file368 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/feacos2.jpg')
file369 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/feacos3.jpg')
file370 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/feacos4.jpg')
file371 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/feacos5.jpg')

p113.photos.attach(io: file367, filename: 'feacos1.jpg')
p113.photos.attach(io: file368, filename: 'feacos2.jpg')
p113.photos.attach(io: file369, filename: 'feacos3.jpg')
p113.photos.attach(io: file370, filename: 'feacos4.jpg')
p113.photos.attach(io: file371, filename: 'feacos5.jpg')

r301 = Review.create(body: "Looks great, everyone at the con loved my Robin cosplay",
author_id: u36.id, product_id: p113.id, rating: 5)






p114 = Product.create(name: 'Avatar: The Last Airbender Inspired Blue Spirit Mask', description: "A replica of the mask worn by the mysterious Blue Spirit from Avatar: The Last Airbender.",
    price: 144.50, seller_id: u30.id )

    tag272 = Tag.create(category_id: cat8.id , product_id: p114.id)
    tag273 = Tag.create(category_id: cat11.id , product_id: p114.id)

file372 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bluespirit1.jpg')
file373 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bluespirit2.jpg')
file374 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/bluespirit3.jpg')


p114.photos.attach(io: file372, filename: 'bluespirit1.jpg')
p114.photos.attach(io: file373, filename: 'bluespirit2.jpg')
p114.photos.attach(io: file374, filename: 'bluespirit3.jpg')


r302 = Review.create(body: "Blue Spirit is great! I love the 'wood' and it is better the just resin (Yes, it is still resin). I have two use Velcro and elastic stretching and it did the trick. As well, it looks good on the wall mount.",
author_id: u37.id, product_id: p114.id, rating: 5)

r303 = Review.create(body: "Best Blue Spirit mask on the market. Fantastic detail and extremely accurate. The wood grain effect is simply amazing. However, I do wish that some things could be changed for the price. Mine has a few lime green spots on it, probably from painting another mask close to it, one of the side pieces is loose, and it only came packed in packing peanuts and wasn't wrapped inside. It's quality, I did expect it to be more professional.",
author_id: u38.id, product_id: p114.id, rating: 3)





p115 = Product.create(name: 'Officer D.Va Overwatch Sew-On Patches Cosplay', description: "If you're cosplaying officer D.va or just love her - these patches are made for you!",
    price: 10.50, seller_id: u29.id )

    tag274 = Tag.create(category_id: cat9.id , product_id: p115.id)
    tag275 = Tag.create(category_id: cat11.id , product_id: p115.id)

file375 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dvapatch1.jpg')
file376 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dvapatch2.jpg')
file377 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/dvapatch3.jpg')


p115.photos.attach(io: file375, filename: 'dvapatch1.jpg')
p115.photos.attach(io: file376, filename: 'dvapatch2.jpg')
p115.photos.attach(io: file377, filename: 'dvapatch3.jpg')


r304 = Review.create(body: "Over all a great pattern. I had to adjust the ears a little but he came out great",
author_id: u39.id, product_id: p115.id, rating: 3)

r305 = Review.create(body: "Cute patch for my Officer D.Va cosplay! Looks true to the game and was well made.",
author_id: u40.id, product_id: p115.id, rating: 4)








p116 = Product.create(name: 'KAWAII PINK REAPER from Overwatch', description: "In stock KAWAII PINK Reaper costume from the game OVERWATCH on my design\n
_______________\n
HAND MADE\n
Before buying, read the details and measurements\n
ALL QUESTIONS WRITE BEFORE BUYING!",
    price: 700.00, seller_id: u28.id )


      tag276 = Tag.create(category_id: cat9.id , product_id: p116.id)
    tag277 = Tag.create(category_id: cat11.id , product_id: p116.id)

file378 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kawaiireaper1.jpg')
file379 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kawaiireaper2.jpg')
file380 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kawaiireaper3.jpg')
file381 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kawaiireaper4.jpg')
file382 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kawaiireaper5.jpg')


p116.photos.attach(io: file378, filename: 'kawaiireaper1.jpg')
p116.photos.attach(io: file379, filename: 'kawaiireaper2.jpg')
p116.photos.attach(io: file380, filename: 'kawaiireaper3.jpg')
p116.photos.attach(io: file381, filename: 'kawaiireaper4.jpg')
p116.photos.attach(io: file382, filename: 'kawaiireaper5.jpg')


r306 = Review.create(body: "Wore this costume to a con and people LOVED IT. Got lots of photos and laughs.",
author_id: u41.id, product_id: p116.id, rating: 4)






p117 = Product.create(name: 'Cosplay Blackwatch Ana captain Amari Overwatch Blizzard', description: "Blackwatch Ana cosplay from Overwatch \n \nPLEASE WRITE TO ME BEFORE PURCHASING!!!!!!!! \n
I don't know the exact price for shipping, it depends on your country. So please write to me first before purchasing, I have to check it first.",
    price: 1500.00, seller_id: u27.id )

      tag278 = Tag.create(category_id: cat9.id , product_id: p117.id)
    tag279 = Tag.create(category_id: cat11.id , product_id: p117.id)

file383 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ana1.jpg')
file384 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ana2.jpg')
file385 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ana3.jpg')
file386 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/ana4.jpg')


p117.photos.attach(io: file383, filename: 'ana1.jpg')
p117.photos.attach(io: file384, filename: 'ana2.jpg')
p117.photos.attach(io: file385, filename: 'ana3.jpg')
p117.photos.attach(io: file386, filename: 'ana4.jpg')


r307 = Review.create(body: "Thank you so much! It looks wonderful and was fully customized. 💖.",
author_id: u42.id, product_id: p117.id, rating: 5)





p118 = Product.create(name: 'Made to Order Genji Baihu LED Full Cosplay Costume Overwatch', description: "Full Genji Baihu cosplay \n Items are made by order of appointment, production time is discussed with each client individually",
    price: 2600.00, seller_id: u26.id )

    tag280 = Tag.create(category_id: cat9.id , product_id: p118.id)
    tag281 = Tag.create(category_id: cat11.id , product_id: p118.id)

file387 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/genji1.jpg')
file388 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/genji2.jpg')
file389 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/genji3.jpg')
file390 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/genji4.jpg')


p118.photos.attach(io: file387, filename: 'genji1.jpg')
p118.photos.attach(io: file388, filename: 'genji2.jpg')
p118.photos.attach(io: file389, filename: 'genji3.jpg')
p118.photos.attach(io: file390, filename: 'genji4.jpg')


r308 = Review.create(body: "The armor pieces are incredible perfect fit for my build well packaged great seller thank you so much!!!",
author_id: u43.id, product_id: p118.id, rating: 4)


r309 = Review.create(body: "Absolutely perfect! Made to measurements and looks awesome! Definitely recommend to anyone looking for this item!",
author_id: u42.id, product_id: p118.id, rating: 4)






p119 = Product.create(name: 'Thor Hammer Metal, Upgraded Version Thor Mjolnir, Thor Cosplay 1/1 Scale Movie Prop Replica, Thors Mjolnir, Thors Hammer, Thor\'s Hammer', description: "In order to make the perfect film replica, this time I upgraded the Thor hammer, redesigned a set of molds, changed several parts of the hammer, and basically restored the hammer in the movie 100%:",
    price: 279.00, seller_id: u25.id )

    tag282 = Tag.create(category_id: cat11.id , product_id: p119.id)


file391 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thor1.jpg')
file392 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thor2.jpg')
file393 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thor3.jpg')
file394 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/thor4.jpg')


p119.photos.attach(io: file391, filename: 'thor1.jpg')
p119.photos.attach(io: file392, filename: 'thor2.jpg')
p119.photos.attach(io: file393, filename: 'thor3.jpg')
p119.photos.attach(io: file394, filename: 'thor4.jpg')


r310 = Review.create(body: "Was packaged very well, better then what I expected.",
author_id: u41.id, product_id: p119.id, rating: 4)


r311 = Review.create(body: "Very well constructed and great quality!",
author_id: u40.id, product_id: p119.id, rating: 5)







p119_1 = Product.create(name: 'AVATAR Korra cosplay', description: "Blue Korra's jacket From Book 1 or Book 2 \n\n

Make any costume of Korra 'The Legend of Korra.' You can do just the individual parts of your choice.",
    price: 185.00, seller_id: u24.id )


    tag283 = Tag.create(category_id: cat8.id , product_id: p119_1.id)
    tag284 = Tag.create(category_id: cat11.id , product_id: p119_1.id)


file395 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/korra1.jpg')
file396 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/korra2.jpg')
file397 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/korra3.jpg')


p119_1.photos.attach(io: file395, filename: 'korra1.jpg')
p119_1.photos.attach(io: file396, filename: 'korra2.jpg')
p119_1.photos.attach(io: file397, filename: 'korra3.jpg')


r312 = Review.create(body: "Outfit arrived sooner than expected, all items are just as they are in photos. Very happy with my purchase! :3",
author_id: u44.id, product_id: p119_1.id, rating: 4)


r313 = Review.create(body: "It fits just about right! Only a little tight around the chest area but that was expected after giving my measurements! Otherwise it all is so comfy and great!!!",
author_id: u45.id, product_id: p119_1.id, rating: 5)







p120 = Product.create(name: 'Crescent Rose RWBY Ruby Rose Cosplay Costume Weapons Prop', description: "Crescent Rose RWBY Ruby Rose Weapons Cosplay Costume Prop",
    price: 110.90, seller_id: u23.id )

file398 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rwby1.jpg')
file399 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rwby2.jpg')
file400 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rwby3.jpg')

    tag285 = Tag.create(category_id: cat8.id , product_id: p120.id)
    tag286 = Tag.create(category_id: cat11.id , product_id: p120.id)


p120.photos.attach(io: file398, filename: 'rwby1.jpg')
p120.photos.attach(io: file399, filename: 'rwby2.jpg')
p120.photos.attach(io: file400, filename: 'rwby3.jpg')


r314 = Review.create(body: "Really well made. Got lots of compliments on it!",
author_id: u46.id, product_id: p120.id, rating: 4)





p121 = Product.create(name: 'Fairy Tail Scarf (Natsu\'s Scarf)', description: "A scarf, based on Natsu from the anime Fairy Tail. The scarf is made from a soft, minky fleece material, great for cold weather. It can be used as a cosplay accessory, or just to wear on a cold day!",
    price: 25.16, seller_id: u22.id )


    tag287 = Tag.create(category_id: cat8.id , product_id: p121.id)
    tag288 = Tag.create(category_id: cat11.id , product_id: p121.id)

file401 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fairytale1.jpg')
file402 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fairytale2.jpg')
file403 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fairytale3.jpg')


p121.photos.attach(io: file401, filename: 'fairytale1.jpg')
p121.photos.attach(io: file402, filename: 'fairytale2.jpg')
p121.photos.attach(io: file403, filename: 'fairytale3.jpg')


r315 = Review.create(body: "Great item, it feels really soft and is something I am actually going to wear outside cosplay. Only reason it is 4 stars is the fact that the end bits are only printed in one side and that shipping is expensive, otherwise, amazing product, love it.",
author_id: u47.id, product_id: p121.id, rating: 4)








p122 = Product.create(name: 'Fullmetal Alchemist anime cosplay uniform costume Roy Mustang Olivia Armstrong Maes Hughes', description: "Fullmetal Alchemist anime cosplay uniform costume.
You can choose different character's costume such as Roy Mustang, Maes Hughes, Olivia Armstrong or other.",
    price: 350.00, seller_id: u21.id )

    tag289 = Tag.create(category_id: cat8.id , product_id: p122.id)
    tag290 = Tag.create(category_id: cat11.id , product_id: p122.id)

file404 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fma1.jpg')
file405 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fma2.jpg')
file406 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/fma3.jpg')


p122.photos.attach(io: file404, filename: 'fma1.jpg')
p122.photos.attach(io: file405, filename: 'fma2.jpg')
p122.photos.attach(io: file406, filename: 'fma3.jpg')


r316 = Review.create(body: "The costume is absolutely fantastic!! The craftsmanship is excellent, it fits perfectly and the communication with the seller was great. Would recommend!!",
author_id: u48.id, product_id: p122.id, rating: 4)





p123 = Product.create(name: 'Attack on Titan 3D Gear Sword Blade Life Size Cosplay', description: "The signature blade used in the Attack on Titan Series. Comes as a single or a pair. \n
Size is around 3ft 1in from tip of the blade to end of the sword handle.\n
Blade is around 2.5in wide.",
    price: 49.00, seller_id: u20.id )

    tag291 = Tag.create(category_id: cat8.id , product_id: p123.id)
    tag292 = Tag.create(category_id: cat11.id , product_id: p123.id)

file407 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk11.jpg')
file408 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk12.jpg')
file409 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/snk13.jpg')


p123.photos.attach(io: file407, filename: 'snk11.jpg')
p123.photos.attach(io: file408, filename: 'snk12.jpg')
p123.photos.attach(io: file409, filename: 'snk13.jpg')


r317 = Review.create(body: "Extremely pleased with the quality of these! Can't wait to have the entire outfit finished. Seller was excellent to work with and extremely proactive in sorting out shipping issues in these uncertain time!",
author_id: u2.id, product_id: p123.id, rating: 4)


r318 = Review.create(body: "Was great for my daughter's Mikasa cosplay",
author_id: u3.id, product_id: p123.id, rating: 5)





p124 = Product.create(name: 'Gekkan Shoujo Nozaku Kun - Yuzuki Seo Cosplay Costume', description: "Yuzuki Seo from Gekkan Shoujo Nozaki-kun cosplay costume.
Included - jacket, blouse, skirt, bow on the neck.",
    price: 95.00, seller_id: u19.id )
    
    tag293 = Tag.create(category_id: cat8.id , product_id: p124.id)
    tag294 = Tag.create(category_id: cat11.id , product_id: p124.id)


file410 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/seo1.jpg')

p124.photos.attach(io: file410, filename: 'seo1.jpg')


r317 = Review.create(body: "Great costume, Seo is my favorite character.",
author_id: u3.id, product_id: p124.id, rating: 4)



p125 = Product.create(name: 'Wonder Woman print, Wonderwoman poster, Justice League wall art, DC comics print, Geekery wall art, Gaming decor', description: "PRINTS INFO:\n
★ Frame(s) is not included\n
★ Glossy or semigloss photo paper at 255 gms / 68 lbs.",
    price: 95.00, seller_id: u19.id )


    tag295 = Tag.create(category_id: cat5.id , product_id: p125.id)
    tag296 = Tag.create(category_id: cat13.id , product_id: p125.id)


file411 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/wwprint1.jpg')

p125.photos.attach(io: file411, filename: 'wwprint1.jpg')

r318 = Review.create(body: "BEAUTIFUL print!!! EXTREME ULTRA EXTREME SPEEDY/SAFE Shipping!!! Packaged EXTRA professionally and safe!!!! Can order ALL different sizes!!!!",
author_id: u4.id, product_id: p125.id, rating: 4)





p126 = Product.create(name: 'Gold Katana, Handmade Real Katana Japanese Samurai Sword Battle Ready Sword', description: "
* Katana, 1045 carbon steel, full tang, handmade, battle ready, blade polished, sharpened, 28 inches blade, 40.5 inches, hardwood scabbard \n
* Exclusive process yields stunning gold blade color, hand sharpened, full tang, battle ready sword \n
* Expertly hand forged by seasoned sword smiths using proven, centuries-old technique",
    price: 149.00, seller_id: u18.id )


    tag297 = Tag.create(category_id: cat6.id , product_id: p126.id)
    tag298 = Tag.create(category_id: cat11.id , product_id: p126.id)


file412 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katana1.jpg')
file413 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katana2.jpg')
file414 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katana3.jpg')
file415 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/katana4.jpg')

p126.photos.attach(io: file412, filename: 'katana1.jpg')
p126.photos.attach(io: file413, filename: 'katana2.jpg')
p126.photos.attach(io: file414, filename: 'katana3.jpg')
p126.photos.attach(io: file415, filename: 'katana4.jpg')

r319 = Review.create(body: "ABSOLUTELY AMAZING. Quality is WONDERFUL, item was exactly as described, and shipped safely! Could not be more satisfied with my experience, definitely recommend.",
author_id: u5.id, product_id: p126.id, rating: 5)









p127 = Product.create(name: 'Porter Robinson Worlds Inspired Glowing LED Art Piece Night Lamp EDM', description: "Light up your living space with this brilliant glowing LED Porter Robinson Worlds Inspired art piece / Night Light - perfect for you or that special Porter fan in your life!",
    price: 39.99, seller_id: u17.id )

    tag299 = Tag.create(category_id: cat3.id , product_id: p127.id)
    tag300 = Tag.create(category_id: cat7.id , product_id: p127.id)

file416 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/porter1.jpg')
file417 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/porter2.jpg')
file418 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/porter3.jpg')

p127.photos.attach(io: file416, filename: 'porter1.jpg')
p127.photos.attach(io: file417, filename: 'porter2.jpg')
p127.photos.attach(io: file418, filename: 'porter3.jpg')

r320 = Review.create(body: "All around positive transaction for my favorite album ever - Worlds by Porter Robinson. Thank you!",
author_id: u6.id, product_id: p127.id, rating: 5)

r321 = Review.create(body: "Really good quality and perfect addition to any desk. Also, very fast shipping and love that it comes with everything. The colors are amazing!",
author_id: u7.id, product_id: p127.id, rating: 5)




p128 = Product.create(name: 'Odesza - Do you know the story of the Russian cosmonaut? EDM Fan', description: "This is a beautiful Odesza ‘A Moment Apart’ inspired Japanese fan for spreading the story of the Russian cosmonaut who fell in love with the sound.",
    price: 20.00, seller_id: u16.id )

    tag301 = Tag.create(category_id: cat7.id , product_id: p128.id)


file419 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/odesza1.jpg')
file420 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/odesza2.jpg')
file421 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/odesza3.jpg')

p128.photos.attach(io: file419, filename: 'odesza1.jpg')
p128.photos.attach(io: file420, filename: 'odesza2.jpg')
p128.photos.attach(io: file421, filename: 'odesza3.jpg')

r322 = Review.create(body: "So. Awesome. Seriously. You guys do great work!",
author_id: u8.id, product_id: p128.id, rating: 5)

r323 = Review.create(body: "It's pretty sturdy and well-made! I got it as a gift for a friend and he was surprised and loved it. Some people say they're a little small, but I'm not sure because this the first rave fan I've bought.",
author_id: u9.id, product_id: p128.id, rating: 4)






p129 = Product.create(name: 'Madeon and Porter Robinson EDM mashup perler', description: "Madeon and Porter Robinson mashup perler! Customizations available :)",
    price: 13.00, seller_id: u15.id )

    tag302 = Tag.create(category_id: cat5.id , product_id: p129.id)
    tag303 = Tag.create(category_id: cat7.id , product_id: p129.id)
    tag304 = Tag.create(category_id: cat14.id , product_id: p129.id)


file422 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/porteon1.jpg')
file423 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/porteon2.jpg')

p129.photos.attach(io: file422, filename: 'porteon1.jpg')
p129.photos.attach(io: file423, filename: 'porteon2.jpg')

r324 = Review.create(body: "looks great, love it, thank you!",
author_id: u10.id, product_id: p129.id, rating: 5)

r325 = Review.create(body: "Super good size and looks just how it should!",
author_id: u11.id, product_id: p129.id, rating: 4)







p130 = Product.create(name: 'Seven Lions Galaxy Perler Necklace', description: "Show your love for SevenLions with this beautiful galaxy lion perler. I can also customize",
    price: 19.00, seller_id: u14.id )

        tag305 = Tag.create(category_id: cat5.id , product_id: p130.id)
    tag306 = Tag.create(category_id: cat7.id , product_id: p130.id)
    tag307 = Tag.create(category_id: cat14.id , product_id: p130.id)

file424 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/sevenlions1.jpg')

p130.photos.attach(io: file424, filename: 'sevenlions1.jpg')


r326 = Review.create(body: "I purchased this for a friend that loves EDC. So very happy with it. Thanks so much!",
author_id: u12.id, product_id: p130.id, rating: 5)

r327 = Review.create(body: "Fast shipping and great customer service!",
author_id: u13.id, product_id: p130.id, rating: 5)






p131 = Product.create(name: 'DeadMau5 Smart LED helmet replica EDM', description: "New Smart LED helmet by LEDSTORM Studio!
For DJ's, musicians and entertainers of all kind.",
    price: 799.00, seller_id: u13.id )

     tag308 = Tag.create(category_id: cat6.id , product_id: p131.id)
     tag309 = Tag.create(category_id: cat7.id , product_id: p131.id)
     tag310 = Tag.create(category_id: cat11.id , product_id: p131.id)

file425 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maus11.jpg')
file426 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maus12.jpg')
file427 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maus13.jpg')
file428 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/maus14.jpg')

p131.photos.attach(io: file425, filename: 'maus11.jpg')
p131.photos.attach(io: file426, filename: 'maus12.jpg')
p131.photos.attach(io: file427, filename: 'maus13.jpg')
p131.photos.attach(io: file428, filename: 'maus14.jpg')





p132 = Product.create(name: 'Arcane LED Goggles - Inspired by Rezz EDM', description: "Our Arcane LED Goggles come pre-programmed with 20 different animations, 30 color options, 3 brightness settings and a built-in battery that will last all night.",
    price: 99.00, seller_id: u12.id )

    tag311 = Tag.create(category_id: cat7.id , product_id: p132.id)
     tag312 = Tag.create(category_id: cat11.id , product_id: p132.id)

file429 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rezz1.jpg')
file430 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rezz2.jpg')
file431 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rezz3.jpg')
file432 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/rezz4.jpg')

p132.photos.attach(io: file429, filename: 'rezz1.jpg')
p132.photos.attach(io: file430, filename: 'rezz2.jpg')
p132.photos.attach(io: file431, filename: 'rezz3.jpg')
p132.photos.attach(io: file432, filename: 'rezz4.jpg')



r328 = Review.create(body: "Shipped on time, product was great, exactly as described. Girlfriend loved it! Thank you <3",
author_id: u14.id, product_id: p132.id, rating: 5)

r329 = Review.create(body: "Seller was quick to help me change address and the goggles arrived shortly after. Great quality, can't wait to take them out for a spin! Thanks",
author_id: u15.id, product_id: p132.id, rating: 4)

r330 = Review.create(body: "So great! Exactly what we wanted. Thank you!",
author_id: u16.id, product_id: p132.id, rating: 5)





p133 = Product.create(name: 'Holographic Illenium + Odesza-Inspired Sticker | Fan Art', description: "Say hello to our Holographic Illenium + Odesza-Inspired Sticker! We designed this sticker to celebrate two of our favorite artists! This is a 3 in holographic sticker, and has a holographic effect in the light. Indoor/outdoor, dishwasher safe holographic vinyl.",
    price: 2.44, seller_id: u11.id )

         tag313 = Tag.create(category_id: cat5.id , product_id: p133.id)
         tag314 = Tag.create(category_id: cat7.id , product_id: p133.id)
         tag315 = Tag.create(category_id: cat16.id , product_id: p133.id)


file432 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/illenium1.jpg')
file433 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/illenium2.jpg')


p133.photos.attach(io: file432, filename: 'illenium1.jpg')
p133.photos.attach(io: file433, filename: 'illenium2.jpg')


r331 = Review.create(body: "Beyond beautiful! Highly recommended. Can’t wait to order more. Made my day!",
author_id: u17.id, product_id: p133.id, rating: 5)






p134 = Product.create(name: 'Illenium x Seven Lions Kandi Cuff Bracelet, Mini Perler Bracelet, EDM Rave Kandi', description: "This colorful Illenium x Seven Lions perler cuff is the perfect finishing touch to your rave outfit or your rear-view mirror!",
    price: 16.54, seller_id: u10.id )

    tag316 = Tag.create(category_id: cat5.id , product_id: p134.id)
    tag317 = Tag.create(category_id: cat7.id , product_id: p134.id)
    tag318 = Tag.create(category_id: cat14.id , product_id: p134.id)

file434 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lionsillenium1.jpg')
file435 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/lionsillenium2.jpg')


p134.photos.attach(io: file434, filename: 'lionsillenium1.jpg')
p134.photos.attach(io: file435, filename: 'lionsillenium2.jpg')


r332 = Review.create(body: "Amazing. My two favourite artists.",
author_id: u18.id, product_id: p134.id, rating: 5)







p135 = Product.create(name: 'San Holo Perler Necklace EDM', description: "Perler and necklace are customizable",
    price: 20.00, seller_id: u9.id )

    tag319 = Tag.create(category_id: cat5.id , product_id: p135.id)
    tag320 = Tag.create(category_id: cat7.id , product_id: p135.id)
    tag321 = Tag.create(category_id: cat14.id , product_id: p135.id)

file436 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/sanholo1.jpg')
file437 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/sanholo2.jpg')


p135.photos.attach(io: file436, filename: 'sanholo1.jpg')
p135.photos.attach(io: file437, filename: 'sanholo2.jpg')


r333 = Review.create(body: "Came just as described, little late on shipment but COMPLETELY made up for it. Will definitely be contacting again.",
author_id: u19.id, product_id: p135.id, rating: 4)




p136 = Product.create(name: 'EDM Rave Flag- Avicii. DJ Festival flag.', description: "AVICII Rave Festival Flag - Our flag is perfect to wave at festivals, hang at home, or in the garage!",
    price: 30.00, seller_id: u9.id )

    tag322 = Tag.create(category_id: cat7.id , product_id: p136.id)

file438 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/avicii1.jpg')
file439 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/avicii2.jpg')


p136.photos.attach(io: file438, filename: 'avicii1.jpg')
p136.photos.attach(io: file439, filename: 'avicii2.jpg')


r334 = Review.create(body: "Great quality",
author_id: u20.id, product_id: p136.id, rating: 4)




p137 = Product.create(name: 'Martin Garrix Small or Large Perler Bead Art Kandi Necklace Rave EDM', description: "Martin Garrix kandi necklace made from Perler and Pony beads. Choose multi-color, blue/white, or custom colors in the options above. I can also add letter beads to the chain!",
    price: 18.00, seller_id: u8.id )

    tag323 = Tag.create(category_id: cat5.id , product_id: p137.id)
    tag324 = Tag.create(category_id: cat7.id , product_id: p137.id)
    tag325 = Tag.create(category_id: cat14.id , product_id: p137.id)

file438 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/garrix1.jpg')
file439 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/garrix2.jpg')
file440 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/garrix3.jpg')


p137.photos.attach(io: file438, filename: 'garrix1.jpg')
p137.photos.attach(io: file439, filename: 'garrix2.jpg')
p137.photos.attach(io: file440, filename: 'garrix3.jpg')


r335 = Review.create(body: "This was a wonderful birthday gift for my brother, on short notice too. Lori stayed in communication with me throughout the process and even suggested some custom changes to make it look better and more unique. I definitely will be buying from her again!",
author_id: u21.id, product_id: p137.id, rating: 4)





p138 = Product.create(name: 'Kaskade Turn It Down Dripping Lips Beaded Kandi Perler Art Necklace Rave EDM', description: "Kaskade kandi necklace made from Perler and Pony beads. I can also add letter beads to the chain!",
    price: 19.00, seller_id: u8.id )

    tag326 = Tag.create(category_id: cat5.id , product_id: p138.id)
    tag327 = Tag.create(category_id: cat7.id , product_id: p138.id)
    tag328 = Tag.create(category_id: cat14.id , product_id: p138.id)

file441 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kaskade1.jpg')
file442 = open('https://etsy-clone-seed.s3-us-west-1.amazonaws.com/product-images/new/kaskade2.jpg')


p138.photos.attach(io: file441, filename: 'kaskade1.jpg')
p138.photos.attach(io: file442, filename: 'kaskade2.jpg')


r336 = Review.create(body: "Awesome perler and awesome price, will be purchasing again",
author_id: u22.id, product_id: p138.id, rating: 4)