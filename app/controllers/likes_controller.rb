class LikesController < ApplicationController
  #layout 'likes'
  #before_action :logged_in_user
  #before_action :authenticate_account
  #before_action :require_user_logged_in
  before_action :set_post, only: [:create, :destroy]

  def create
     #@like = Like.create(user_id: current_account.id, post_id: params[:post_id])
     @like = current_account.likes.create(post_id: params[:post_id])
     likes_count
  　 render :index
  end

  def destroy
    #like = Like.find_by(user_id: current_account.id, post_id: params[:post_id])
    #like.destroy
    set_like
    @like.destroy
    @like = nil
    likes_count
    render :index
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_like
       @like = current_account.likes.find_by(post_id: params[:post_id])
    end

    def likes_count
      @likes_count = Like.where(post_id: @post.id).count
    end
end
