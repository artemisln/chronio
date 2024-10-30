module Posts
    class ReactionsController < FeedController
      def create
        @post = Post.find(params[:post_id])
        reaction = current_user.reactions.find_or_create_by(post: @post)
        reaction.update(name: params[:name])
        respond_to do |format|
          format.turbo_stream { }
        end
      end
    end
end
