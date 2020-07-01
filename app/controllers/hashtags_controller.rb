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
    end




end
