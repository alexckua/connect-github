class User < ApplicationRecord
  validates :nickname, :git_token, presence: true, uniqueness: true
end
