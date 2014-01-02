class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = user.new(params[:post])

    if @user.save
      redirect_to users_path,  :notice => "Your post was saved"
    else
      render "new"
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
