class SessionsController < ApplicationController
  respond_to :js

  layout false

  def create
    @user = User.find_by(user_params) || User.new(user_params)
    @git_user = GithubService.new(user_params[:git_token]).user

    if @user.valid? && git_credentials_valid?
      @user.save
      session[:user_id] = @user.id
      respond_with(flash.now[:success] = ['User was successfully login.'])
    else
      respond_with(flash.now[:error] = @user.errors.full_messages)
    end
  end

  def destroy
    session[:user_id] = nil
    respond_with(flash.now[:notice] = ['User was successfully signout.'])
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :git_token)
  end

  def git_credentials_valid?
    if @git_user.exclude? '401'
      true
    else
      @user.errors.messages[:'Git error'] = [@git_user]
      false
    end
  end
end
