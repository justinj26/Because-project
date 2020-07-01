# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all 
Comment.destroy_all
Hashtag.destroy_all
HashPost.destroy_all

post1 = Post.create(content: "Wow, this is my first post")
post2 = Post.create(content: "Wow, this is my second post")
post3 = Post.create(content: "Wow, this is my third post")
post4 = Post.create(content: "Wow, this is my fourt post")

comment1 = Comment.create(message: "Oh my gosh, did you see what was said, that was so thoughtful!", post_id: post4.id)
comment2 = Comment.create(message: "I really like how they structured out that argument, so organize.", post_id: post2.id)
comment3 = Comment.create(message: "I think the reason for that is to find a closer meaning in life", post_id: post1.id)

h1 = Hashtag.create(name: "Because_ilikeit")
h2 = Hashtag.create(name: "Because_whynot")
h3 = Hashtag.create(name: "Because_yes")

hp1 = HashPost.create(post_id: post1.id, hashtag_id: h1.id)
hp2 = HashPost.create(post_id: post2.id, hashtag_id: h1.id)
hp3 = HashPost.create(post_id: post3.id, hashtag_id: h2.id)