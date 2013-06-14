require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test 'Topic name is required' do
    topic = Topic.new

    assert topic.invalid?
    assert_equal(["can't be blank"], topic.errors[:name])
  end

  test 'Topic must have have a user' do
    topic = Topic.new

    assert topic.invalid?
    assert_equal(["can't be blank"], topic.errors[:created_by_user])
  end

  test 'Topic must have have content' do
    topic = Topic.new

    assert topic.invalid?
    assert_equal(["can't be blank"], topic.errors[:content])
  end
end