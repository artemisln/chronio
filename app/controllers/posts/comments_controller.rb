module Posts
  class CommentsController < BaseController
    def new; end

    def create
      @comment = @post.comments.new(comment_params)
      @comment.user = current_user

      respond_to do |format|
        if @comment.save
          format.turbo_stream
        else
          # Redirect back with an alert if the comment fails to save
          format.html { redirect_to post_path(@post), alert: "Comment could not be created." }
        end
      end
    end

    def index; end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end
  end
end