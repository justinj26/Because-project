class RepliesController < ApplicationController

    def create
        #  Build this out
        Reply.create(reply_params)
    end

    private 

    def reply_params
        params.require(:reply).permit(:content)
    end
end
