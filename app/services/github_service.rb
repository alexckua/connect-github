require 'octokit'

class GithubService
  attr_reader :token

  def initialize(token = nil)
    @token = token
  end

  def user
    @user = client.user
  rescue Octokit::Unauthorized => e
    e.message
  end

  def client
    @client = Octokit::Client.new(access_token: token)
  end
end
