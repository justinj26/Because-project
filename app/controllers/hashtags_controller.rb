class HashtagsController < ApplicationController

    def index
        @trending_hashtags = Hashtag.trending
        @hashtags = Hashtag.all
        
    end

    def show
        @hashtag = Hashtag.find(params[:id])
        # byebug
    end

    def new
    end

    def create
        @hashtag = Hashtag.new(name: params[:name])
        if @hashtag.valid?
            @hashtag.save
            redirect_to user_path(@user)
        else
            flash[:errors] = @hashtag.errors.full_messages
            # hashtag_errors = flash[:errors]
            redirect_to new_post_path
        end
    end



end
