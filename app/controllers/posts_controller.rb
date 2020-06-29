class PostsController < ApplicationController

    def new
        @post = Post.new 
    end

    # probably should use slugs
    def show
        @post = Post.find(params[:id])
    end

    def create
    end

    def destroy
        Post.delete(params[:id])
    end

    


end
