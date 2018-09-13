class LikesController < ApplicationController
  #layout 'likes'
  # before_action :logged_in_user
  #before_action :authenticate_account
  before_action :set_post, only: [:create, :destroy]

  def create
     @like = Like.create(user_id: current_account.id, post_id: params[:post_id])
  end

  def destroy
    like = Like.find_by(user_id: current_account.id, post_id: params[:post_id])
    like.destroy
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
