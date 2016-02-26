# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    post = Post.new
    post.post_username = "이보민"
    post.post_password = "0000"
    post.post_content = "Hello"
    post.my_image = "http://www.stevenmusngi.com/wp-content/uploads/2012/01/HelloWorld.png"
    post.save