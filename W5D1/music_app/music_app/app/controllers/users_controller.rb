class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save!
      login!(@user)
      redirect_to users_url(@user)
    else
      flash.now[:errors] = ["Username or password invalid"]
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find_by(id: current_user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
