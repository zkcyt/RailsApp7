class LikesController < ApplicationController
  #layout 'likes'
  before_action :set_post
  require 'net/http' # この一行を追加する

  def create
    #@like = Like.new(user_id: current_account.id, post_id: params[:post_id])
    #@like.save
    # @post = Post.find(params[:post_id])
    # @post.like(current_user)
     @like = Like.create(user_id: current_account.id, post_id: params[:post_id])
     #@likes = Like.where(post_id: params[:post_id])
     #@posts = Post.all

     # respond_to do |format|
        # format.html
        # format.js
   end

   def destroy
    like = Like.find_by(user_id: current_account.id, post_id: params[:post_id])
    like.destroy
  # @post = Like.find(params[:id]).post
   # @post.unlike(current_user)
    #@likes = Like.where(post_id: params[:post_id])
    #@posts = Post.all

     # respond_to do |format|
      #  format.html
      #  format.js
   end

   private

    def set_post
      @post = Post.find(params[:post_id])
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
