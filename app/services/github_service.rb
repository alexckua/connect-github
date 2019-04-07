require 'octokit'

class GithubService
  def self.user(token)
    @user = Octokit::Client.new(access_token: token).user
  end
end
