class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(user_params[:email], user_params[:password])
    if @user.save
      login!(@user)
      redirect_to user_url
    else
      flash[:errors] = ["Incorrect username or password"]
      redirect_to session_url
    end
  end

  def destroy
    if current_user
      current_user.reset_session_token!
    end
    logout!
    redirect_to new_session_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
