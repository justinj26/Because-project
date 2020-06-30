class FollowsController < ApplicationController

    before_action :find_follow, only: [:show, :edit, :update, :destroy]

    # shows all of your relationships:followers/following
    def index
        @user = User.find(session[:user_id])
        @followers = @user.follows 
    end

    # shows individual relationship between two users
    def show
    end

    def new
        @follow = Follow.new
    end

    # creates new relationship(following/followed by new user)
    def create
        @follow.new(follow_params)
        redirect_to follows_path
        # needs validation 
    end

    def edit
    end

    def update
        @follow.update(follow_params)
        redirect_to follow_path
        # needs validation
    end

    def destroy
        @follow.delete
        redirect_to follows_path
    end

    private
    
    def find_follow
        # each follow relationship would have a unique id
        @follow = Follow.find(params[:id])
    end

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end
end
