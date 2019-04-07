class SessionsController < ApplicationController
  def create
    @user = User.find_by(nickname: user_params[:nickname], git_token: user_params[:git_token])
    @user ||= User.create(user_params)
    session[:user_id] = @user.id if @user.valid?

    respond_to do |format|
      format.js { render 'create', layout: false }
    end
  end

  def destroy
    session[:user_id] = nil

    respond_to do |format|
      format.js { render 'destroy', layout: false }
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :git_token)
  end
end
