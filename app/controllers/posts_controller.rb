class PostsController < ApplicationController

    before_action :find_post, only: [:show]

    def index
        redirect_to user_path(@user)
        @posts = current_user.all_followees_posts
    end

    def new
        @post = Post.new 
        @emoticons = Emoticon.all
    end

    # probably should use slugs

    def show
        @comment = Comment.new
        @reply = Reply.new 

    end

    def create
        # byebug
        if params[:image]
         image = Cloudinary::Uploader.upload(params[:image])
        end
        post = Post.create(post_params)
        byebug
        current_user.posts << post 
        redirect_to user_path(current_user)
    end

    def destroy
        Post.delete(params[:id])
    end

    private


    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:content, :emoticon_id, :user_id, :image)
    end

end
