class LikesController < ApplicationController

  def create
    # @post = Post.find(params[:post_id])
    # @post.like(current_user)
      @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
     @likes = Like.where(post_id: params[:post_id])
     @posts = Post.all
   end

   def destroy
     # @post = Like.find(params[:id]).post
     # @post.unlike(current_user)
     like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
     like.destroy
     @likes = Like.where(post_id: params[:post_id])
     @posts = Post.all
   end

 # def create
  #  @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
  #  @like.save
  #  redirect_to("/posts/#{params[:post_id]}")
  # end

  # def destroy
    # @like = Like.find_by(user_id: @current_user.id, post_id: params[:post_id])
    # @like.destroy
    # redirect_to("/posts/#{params[:post_id]}")
  # end

end
