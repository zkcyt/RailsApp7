class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!
  # layout 'users'

  # GET /users
  # GET /users.json
  def index
    users = User.where 'account_id == ?', current_account.id
    if users[0] == nil then
         user = User.new
         user.account_id = current_account.id
         user.sitename = '<< no name >>'
         user.save
         users = User.where 'account_id == ?', current_account.id
    end
    @user = users[0]
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find params[:id]
  end

  # GET /users/new
  def new
    redirect_to '/posts'
  end

  # GET /users/1/edit
  def edit
    redirect_to '/posts'
  end

  # POST /users
  # POST /users.json
  def create
    redirect_to '/posts'
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to '/posts' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :index }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    redirect_to '/posts'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:sitename, :account_id, :intro)
    end
end
