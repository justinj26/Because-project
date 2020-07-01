class FollowsController < ApplicationController

    before_action :find_follow, only: [:show, :edit, :update, :destroy]
    

    # shows all of your relationships:followers/following
    def followers 
        @user = User.find(session[:user_id])
        @followers = @user.followers 
        render 'followers'
    end

    # shows individual relationship between two users
    def followees
        @user = User.find(session[:user_id])
        @followees = @user.followees 
        render 'followees'
    end

    def new
        # @follow = Follow.new
        # Make sure validations still work as if a follow was a user
        # @user = User.find(session[:user_id])
        # @user.follows.build(follower_id: @user.id, followee_id: params[:id])
        # redirect_to 
    end

    # creates new relationship(following/followed by new user)
    def update 
        # @follow.new(follow_params)
        @user = User.find(session[:user_id])
        @user.follows.build(follower_id: @user.id, followee_id: params[:id])
        redirect_to followees_path
        # needs validation 
    end

    def edit
    end

    # def update
    #     @follow.update(follow_params)
    #     redirect_to follow_path
    #     # needs validation
    # end

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
