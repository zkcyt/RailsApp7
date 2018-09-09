class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!
  # layout 'posts'

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.page(params[:page]).order('created_at desc')
    users = User.where 'account_id == ?', current_account.id
    if users[0] == nil then
         user = User.new
         user.account_id = current_account.id
         user.sitename = '<< no name >>'
         user.save
         users = User.where 'account_id == ?', current_account.id
    end
    @user = users[0]
    @post = Post.new
    @post.user_id = @user.id
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

  end

  # GET /posts/new
  def new
    redirect_to '/posts'
  end

  # GET /posts/1/edit
  def edit
    redirect_to '/posts'
  end

  # POST /posts
  # POST /posts.json
  def create
    @posts = Post.page(params[:page]).order('created_at desc')
    @post = Post.new(post_params)
    @user = User.where('account_id == ?', current_account.id)[0]
    respond_to do |format|
      if @post.save
        format.html { redirect_to '/posts' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :index }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    redirect_to '/posts'
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    redirect_to '/posts'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
