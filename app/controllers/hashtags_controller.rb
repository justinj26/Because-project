class HashtagsController < ApplicationController

    def index
        @hashtags = Hashtag.all 
        
    end

    def show
        @hastag = Hashtag.find(params[:id])
    end

    def new
    end

    def create
    end

    def 


end
