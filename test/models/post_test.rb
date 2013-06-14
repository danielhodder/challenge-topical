require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'comment is required' do
    post = Comment.new

    assert post.invalid?
    assert_equal(["can't be blank"], post.errors[:comment])
  end

  test 'topic is required' do
    post = Comment.new

    assert post.invalid?
    assert_equal(["can't be blank"], post.errors[:topic])
  end

  test 'Topic must have have a user' do
    post = Comment.new

    assert post.invalid?
    assert_equal(["can't be blank"], post.errors[:created_by_user])
  end
end