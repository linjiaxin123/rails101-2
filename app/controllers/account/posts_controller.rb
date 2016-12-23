class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
