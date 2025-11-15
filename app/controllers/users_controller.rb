class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    # Add any additional logic for showing user profile, e.g., their posts
  end

  def follow
    @user = User.find(params[:id])
    current_user.follow(@user)
    redirect_to @user, notice: "You are now following #{@user.username}."
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.unfollow(@user)
    redirect_to @user, notice: "You have unfollowed #{@user.username}."
  end
end
