require 'application_responder'

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder

  helper_method :current_user, :git_user

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find_by(id: session[:user_id])
  end

  def git_user
    @git_user ||= GithubService.new(current_user.git_token).user
  end
end
