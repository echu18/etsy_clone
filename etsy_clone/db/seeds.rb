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

# file1 = open('http://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/smug_knife_cat.jpg')
# file2 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/crying+cat.jpg')
# file3 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/saladcat.png')
# file4 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/pizza_cat.png')
# file5 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/sitting_cat.png')
# p1.photos.attach(io: file1, filename: 'smug_knife_cat.jpg')
# p1.photos.attach(io: file2, filename: 'crying+cat.jpg')
# p1.photos.attach(io: file3, filename: 'saladcat.png')
# p1.photos.attach(io: file4, filename: 'pizza_cat.png')
# p1.photos.attach(io: file5, filename: 'sitting_cat.png')



# r1 = Review.create(body: 'The quality, from the imaging to the material, are great and my friend loved them! They included a complimentary set as a holiday gift and thank you which I thought was so nice! I definitely recommend buying from him and will be coming back in the future 😊',
# author_id: u2.id, product_id: p1.id, rating: 5)
