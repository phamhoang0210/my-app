class UsersController < ApplicationController
  def index
    @stt = 0;
    @users = User.all
    render layout: "backend"
  end
  def new
    @user = User.new
    render layout: "backend"
  end
  def create
     @user = User.new user_params
     if@user.save
       flash[:success]="Register success (^.^)"
       redirect_to users_path
     else
       flash[:danger]="Register fails!!"
       render :new
     end
  end
  def edit
    @user = User.find(params[:id])
    render layout: "backend"
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success]="Update User Success"
      redirect_to users_path
    else
      flash[:danger]="Update Fails!!"
      render :new
    end

  end
  def show
      @users= User.find_by id: params[:id]
      render layout: "backend"
  end
  def destroy
     User.find(params[:id]).destroy
     flash[:success] = "You delete success"
     redirect_to users_url
  end

  private
  def user_params
     params.require(:user).permit :name, :email, :password, :password_confirmation
  end
end
