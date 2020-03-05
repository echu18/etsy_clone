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

demouser = User.create(username: 'DemoUser', email: 'DemoUser', password: '123456')
u1 = User.create(username: 'jamie', email: 'jamie@cc.com', password: '123456')
u2 = User.create(username: 'winston', email: 'winston@cc.com', password: '123456')
u3 = User.create(username: 'fred', email: 'fred@cc.com', password: '123456')
u4 = User.create(username: 'mindy', email: 'mindy@cc.com', password: '123456')
u5 = User.create(username: 'sean', email: 'sean@cc.com', password: '123456')
u6 = User.create(username: 'jerry', email: 'jerry@cc.com', password: '123456')


p1 = Product.create(name:'earring', description: 'very nice', price: 23.99, seller_id: 1, category_id: 22)
file1 = open('http://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/smug_knife_cat.jpg')
file2 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/crying+cat.jpg')
file3 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/saladcat.png')
p1.photos.attach(io: file1, filename: 'smug_knife_cat.jpg')
p1.photos.attach(io: file2, filename: 'crying+cat.jpg')
p1.photos.attach(io: file3, filename: 'saladcat.png')


# p1 = Product.create(name:'earring', description: 'very nice', price: 23.99, seller_id: 1, category_id: 22)
# file1 = open('https://etsy-clone-dev.s3-us-west-1.amazonaws.com/test/smug_knife_cat.jpg')
# p1.photos.attach(io: file1, filename: 'smug_knife_cat.jpg')
# p1.save!