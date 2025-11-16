class PagesController < ApplicationController

  # Pages for navbar

  def home
  end

  def network
    # show all users (exclude current user when signed in)
    @users = if user_signed_in?
        User.where.not(id: current_user.id).order(:created_at)
    else
        User.order(:created_at)
    end
  end

  def jobs
  end

  def messages
  end

  # Pages for secondary stuff

  def about
  end

  def tos
  end

  def privacy_policy
  end
end
