class CommentsController < ApplicationController


    def create
        # Build this out
        @comment = Comment.create(comment_params)
        redirect_to post_path(comment_params[:post_id])
    end

    private 

    def comment_params
        params.require(:comment).permit(:message, :post_id, :user_id)
    end
end
