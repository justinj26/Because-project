# README

ReadMe

Hi, this is an app called Because

It’s a social media app made to encourage healthy dialogue with your peers.  With because, gone are the days of only having one sentence conversations with your peers, and trying to get introspective, but being limited by a party’s unwillingness to get into the nifty gritty of why someone thinks the way they do.

Our ReadMe is broken down into five parts:

	1.	Profile page (which also serves as an analytics page) for each user. On the profile page, a user can see their account, which includes a picture (uploaded using ActiveStorage, some analytics like their frequented hashtags, and account age, as well as all of their posts.
	2.	A second major feature of the app is to see a post.  All of the posts are linked up to a page where you can see the post in its entirety, complete with all of the comments on the post, and all of the replies on those comments.  
	3.	Validations.  The validations, using active record validations, are an extremely important part of this project.  Every comment, reply, and post must contain at least 250 characters, unless they are a question, because the app is more than happy to encourage asking really great questions!  If there is no question, the post must again be at least 250 characters, and contain the words "because", "reason", or "why".  Additionally, all usernames must be unique, but that validations not that unique :).
	4.	A hashtags page.  This page looks at all the most frequented and trending hashtags.  Admittedly, we stole this idea from Twitter, as we want to be able to search and orient use of the platform by those issues people thought were important to them, rather than around other people. (Admittedly, upon writing this here, it sounds like I am placing causes over people, but hopefully the cause of trying to genuinely better understand the world isn’t too bad).
	5.	Future plans:  We kind of ran out of time working on the project.  We’ve implemented usage of bootstrap, as well as made a follow class.  We couldn’t really get our follow class up and running, or else we would have implemented functionality and oriented the app around a feed feature.  Also, we would do a lot more CSS styling with the app, which could go on for days or maybe even weeks by itself.  There’s definitely a lot of room for imrpovement in the project, and if you want to build it, too, to make it your own.

Features and attributes section:

8 models

Users
	⁃	username
	⁃	name
	⁃	bio
	⁃	has_secured_password (ActiveRecord)
	⁃	has_one_attached :image (ActiveStorage)
Follow -> self-referential relationship to users
	⁃	follower_id
	⁃	followee_id
Emoticons
	⁃	image
	⁃	name
Posts
	⁃	content
	⁃	emoticon_id
	⁃	user_id
	⁃	has_one_attached :image (ActiveStorage)
Comments
	⁃	message
	⁃	user_id
	⁃	post_id
Replies
	⁃	content
	⁃	comment_id
	⁃	post_id
	⁃	user_id
Hashtags
	⁃	name
HashPosts
	⁃	post_id
	⁃	hashtag_id

In case it wasn’t clear from the attributes above. A user has_many posts, comments, and replies.  A post has_many comments, hashtags (through: :hash_posts), and replies, and belongs_to a user and an emoticon.  A comment has_many replies, and belongs to a post and a user.  A reply belongs_to a comment, and to a user.  A follow has a self-referential relationship with users.  Both images and photos have an image attached using ActiveStorage.  Users have a secured password using that security feature in ActiveRecord.

I hope you like the project, and if you want to build something like it yourself, feel free to take it further than we did.  It’s a labor of love, but hopefully, you’ll make it further than we did, and you’ll be able to come back and tell us (maybe) how much it was worth it.

