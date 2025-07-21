module Posts
  class CommentsController < BaseController
    def new; end

    def create
      @comment = @post.comments.new
      @comment.user = current_user
      @comment.update(comment_params)
      redirect_to root_path
    end

    def index; end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end
  end
end
