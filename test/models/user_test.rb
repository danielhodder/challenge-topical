require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'Username is required' do
    user = User.new

    assert user.invalid?
    assert_equal(["can't be blank"], user.errors[:username])
  end
end