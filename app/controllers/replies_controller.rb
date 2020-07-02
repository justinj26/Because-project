class RepliesController < ApplicationController

    def create
        #  Build this out
        byebug
        Reply.create(reply_params)

        post_path(reply_params[:post_id])
    end

    private 

    def reply_params
        params.require(:reply).permit(:content, :user_id, :post_id, :comment_id)
    end
end
