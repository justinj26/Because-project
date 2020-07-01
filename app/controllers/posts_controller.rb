class PostsController < ApplicationController

    def index
        @posts = current_user.all_followees_posts
    end

    def new
        @post = Post.new 
        @emoticons = Emoticon.all
    end

    # probably should use slugs
    def show
        
    end

    def create
        byebug
        if params[:image]
         image = Cloudinary::Uploader.upload(params[:image])
        end
        post = Post.create(post_params)
        current_user.posts << post 
        redirect_to user_path(current_user)
    end

    def destroy
        Post.delete(params[:id])
    end

    private

    def find_user

    end

    def post_params
        params.require(:post).permit(:content, :emoticon, :image['url'])
    end


    


end
