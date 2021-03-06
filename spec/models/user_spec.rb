require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:nickname) }
    it { is_expected.to validate_presence_of(:git_token) }
    it { is_expected.to validate_uniqueness_of(:nickname) }
    it { is_expected.to validate_uniqueness_of(:git_token) }
  end
end
