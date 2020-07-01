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
        current_user.posts.build(post_params)

    end

    def destroy
        Post.delete(params[:id])
    end

    private

    def find_user

    end

    def post_params
        params.require(:post).permit(:content, :emoticon, :image)
    end


    


end
