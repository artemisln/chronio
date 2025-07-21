module Posts
  class BaseController < ApplicationController
    before_action :set_post

    private

    def set_post
      @post = Post.find(params[:post_id])
    end
  end
end
