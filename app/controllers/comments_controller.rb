class CommentsController < ApplicationController


    def create
        # Build this out
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            redirect_to post_path(comment_params[:post_id])
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to post_path
        end
    end

    private 

    def comment_params
        params.require(:comment).permit(:message, :post_id, :user_id)
    end
end