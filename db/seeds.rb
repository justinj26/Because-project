# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Post.destroy_all 
Comment.destroy_all
Hashtag.destroy_all
HashPost.destroy_all
Emoticon.destroy_all 

e1 = Emoticon.create(name:"love", image:"(ɔ◔‿◔)ɔ ♥")
e2 = Emoticon.create(name:"flipping table", image:"┻━┻ ︵ヽ(`▭´)ﾉ︵﻿ ┻━┻")
e3 = Emoticon.create(name:"peace", image:"(>‿◠)✌")
e4 = Emoticon.create(name:"cute", image:"❁◕ ‿ ◕❁")
e5 = Emoticon.create(name:"bear", image:"ʕ•ᴥ•ʔ")
e6 = Emoticon.create(name:"dancing", image:"♪┏(・o･)┛♪┗ ( ･o･) ┓♪")
e7 = Emoticon.create(name:"angry", image:"ὸ.ό")
e8 = Emoticon.create(name:"pointing", image:"(>‘o’)>")
e9 = Emoticon.create(name:"cheer", image:"٩(｡•́‿•̀｡)۶")
e10 = Emoticon.create(name:"embarrassed", image:"(⁄ ⁄•⁄ω⁄•⁄ ⁄)")
e11 = Emoticon.create(name:"sympathy", image:"ヽ(￣ω￣(。。 )ゝ")
e12 = Emoticon.create(name:"dissatisfied", image:"(ᗒᗣᗕ)՞")
e13 = Emoticon.create(name:"pissed", image:"(ﾉಥ益ಥ)ﾉ")
e14 = Emoticon.create(name:"crying", image:"｡ﾟ･ (>﹏<) ･ﾟ｡")
e15 = Emoticon.create(name:"pain", image:"[ ± _ ± ]")
e16 = Emoticon.create(name:"indifference", image:"┐(︶▽︶)┌")
e17 = Emoticon.create(name:"confusion", image:"(◎ ◎)ゞ")
e18 = Emoticon.create(name:"doubt", image:"(→_→)")
e19 = Emoticon.create(name:"surprise", image:"ヽ(°〇°)ﾉ")
e20 = Emoticon.create(name:"hugging", image:"⊂( ´ ▽ ` )⊃")
e21 = Emoticon.create(name:"winking", image:"(^_-)≡☆")
e22 = Emoticon.create(name:"apologizing", image:"(シ_ _)シ")
e23 = Emoticon.create(name:"nosebleeding", image:"(*￣ii￣)")
e24 = Emoticon.create(name:"hidding", image:"┬┴┬┴┤･ω･)ﾉ")
e25 = Emoticon.create(name:"writing", image:"__φ(．．;)")
e26 = Emoticon.create(name:"running", image:"─=≡Σ((( つ＞＜)つ")
e27 = Emoticon.create(name:"sleeping", image:"(＿ ＿*) Z z z")
e28 = Emoticon.create(name:"cat", image:"(^◕ᴥ◕^)")
e29 = Emoticon.create(name:"dog", image:"V●ᴥ●V")
e30 = Emoticon.create(name:"rabbit", image:"／(=´x`=)＼")
# capitalize names before creation
u1 = User.create(username: 'tt21', name: "tiny tim", password_digest: BCrypt::Password.create('Your_Password'))
u2 = User.create(username: 'm3do', name: "megasho", password_digest: BCrypt::Password.create('Your_Password'))
u3 = User.create(username: 'pb97', name: "Prinner", password_digest: BCrypt::Password.create('Your_Password'))
u4 = User.create(username: 'ds09', name: 'Daisy', password_digest: BCrypt::Password.create('Your_Password'))

post1 = Post.create(content: "Wow, this is my first post", emoticon_id: Emoticon.first.id, user_id: User.first.id)
post2 = Post.create(content: "Wow, this is my second post", emoticon_id: Emoticon.second.id, user_id: User.first.id)
post3 = Post.create(content: "Wow, this is my third post", emoticon_id: Emoticon.last.id, user_id: User.third.id)
post4 = Post.create(content: "Wow, this is my fourt post", emoticon_id: Emoticon.third.id, user_id: User.last.id)

comment1 = Comment.create(message: "Oh my gosh, did you see what was said, that was so thoughtful!", post_id: Post.third.id, user_id: User.first.id)
comment2 = Comment.create(message: "I really like how they structured out that argument, so organize.", post_id: Post.second.id, user_id: User.second.id)
comment3 = Comment.create(message: "I think the reason for that is to find a closer meaning in life", post_id: Post.first.id, user_id: User.third.id)

h1 = Hashtag.create(name: "Because_ilikeit")
h2 = Hashtag.create(name: "Because_whynot")
h3 = Hashtag.create(name: "Because_yes")

hp1 = HashPost.create(post_id: Post.first.id, hashtag_id: Hashtag.third.id)
hp2 = HashPost.create(post_id: Post.second.id, hashtag_id: Hashtag.second.id)
hp3 = HashPost.create(post_id: Post.third.id, hashtag_id: Hashtag.first.id)






