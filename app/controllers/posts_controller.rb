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
        # byebug
        @comment = Comment.new
        @reply = Reply.new 

    end

    def create
        byebug
        # if params[:post][:image]
        #  image = Cloudinary::Uploader.upload(post_params[:image])
        #  post = Post.create(user_id: post_params[:user_id], content: post_params[:content], 
        #  emoticon_id: post_params[:emoticon_id], image: image)
        # else 
        # post = Post.create(user_id: post_params[:user_id], content: post_params[:content],
        #  emoticon_id: post_params[:emoticon_id])
        # end

        if params[:post][:image]
            @post = Post.new(post_params)
            if @post.valid?
                @post.save
                current_user.posts << @post 
                redirect_to user_path(current_user)
            else
                flash[:errors] = @post.errors.full_messages
                post_errors = flash[:errors]
                redirect_to new_post_path
            end
        else
            @post = Post.new(user_id: post_params[:user_id], content: post_params[:content], emoticon_id: post_params[:emoticon_id])
            if @post.valid?
                @post.save
                current_user.posts << @post 
                redirect_to user_path(current_user)
            else
                flash[:errors] = @post.errors.full_messages
                post_errors = flash[:errors]
                redirect_to new_post_path
            end
        end

        
         post = Post.create(post_params)
        

        # byebug
    

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
