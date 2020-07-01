class CommentsController < ApplicationController


    def create
        # Build this out
        @comment = Comment.create(comment_params)
    end

    def comment_params
        params.require(:comment).permit(:message )
    end
end
