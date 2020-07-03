class RepliesController < ApplicationController

    def create
        #  Build this out
        # byebug
        @reply = Reply.new(reply_params)
        if @reply.valid?
            @reply.save
            redirect_to post_path(reply_params[:post_id])
        else
            flash[:errors] = @reply.errors.full_messages
            reply_messages = flash[:errors]
            redirect_to comment_path
        end
    end

    private 

    def reply_params
        params.require(:reply).permit(:content, :user_id, :post_id, :comment_id)
    end
end
